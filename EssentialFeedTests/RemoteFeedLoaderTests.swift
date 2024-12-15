//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Ronald Fornis Paglinawan on 16/12/2024.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}


class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        // Arrange
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        // Act
        
        // Assert
        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestDataFromURL() {
        // Arrange
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        // Act
        sut.load()
        
        // Assert
        XCTAssertNotNil(client.requestedURL)
    }
}
