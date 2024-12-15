//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Ronald Fornis Paglinawan on 16/12/2024.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}


class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        // Arrange
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        // Act
        
        // Assert
        XCTAssertNil(client.requestedURL)
    }

}
