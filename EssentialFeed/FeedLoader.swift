//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ronald Fornis Paglinawan on 14/12/2024.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
