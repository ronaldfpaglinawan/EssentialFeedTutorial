//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ronald Fornis Paglinawan on 14/12/2024.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
