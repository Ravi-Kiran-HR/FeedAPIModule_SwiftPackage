//
//  FeedItemsMapper.swift
//  SPMDemo
//
//  Created by Ravi Kiran HR on 20/03/22.
//

import Foundation

class FeedItemsMapper {
    struct Root: Decodable {
        var items: [Item]
        var feedItems: [FeedItem] {
            items.map { $0.feedItem }
        }
    }
    
    struct Item: Decodable {
        var id: UUID
        var description: String
        var image: URL
        
        var feedItem: FeedItem {
            FeedItem(id: id, description: description, image: image)
        }
    }
    
    static func map(data: Data, response: HTTPURLResponse) -> FeedResult {
        guard response.statusCode == 200, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(RemoteFeedLoader.Error.invalidData)
        }
        return .success(root.feedItems)
    }
}
