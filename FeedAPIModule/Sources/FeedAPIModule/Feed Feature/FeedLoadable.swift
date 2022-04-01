//
//  FeedLoadable.swift
//  SPMDemo
//
//  Created by Ravi Kiran HR on 20/03/22.
//

import Foundation

public typealias FeedResult = Result<[FeedItem], Error>

public protocol FeedLoadable {
    func load(completion: @escaping(FeedResult) -> Void)
}
