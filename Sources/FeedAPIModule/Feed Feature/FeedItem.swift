//
//  FeedItem.swift
//  SPMDemo
//
//  Created by Ravi Kiran HR on 20/03/22.
//

import Foundation

public struct FeedItem {
    public let id: Int
    public let userId: Int
    public let title: String
    
    internal init(id: Int, userId: Int, title: String) {
        self.id = id
        self.userId = userId
        self.title = title
    }
}
