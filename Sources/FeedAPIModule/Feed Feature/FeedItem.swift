//
//  FeedItem.swift
//  SPMDemo
//
//  Created by Ravi Kiran HR on 20/03/22.
//

import Foundation

public struct FeedItem {
    public let id: UUID
    public let description: String
    public let image: URL
    
    public init(id: UUID, description: String, image: URL) {
        self.id = id
        self.description = description
        self.image = image
    }
}
