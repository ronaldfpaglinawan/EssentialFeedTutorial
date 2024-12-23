//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ronald Fornis Paglinawan on 14/12/2024.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping(LoadFeedResult<Error>) -> Void)
}
