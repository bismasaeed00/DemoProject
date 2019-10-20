//
//  StoryboardTests.swift
//  DemoProjectTests
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import XCTest
@testable import DemoProject

class StoryboardTests: XCTestCase {

    func testInstantiateViewControllerNotNil() {
        let viewController = Storyboard.instantiate(view: PhotoListViewController.self, from: .main)
        
        XCTAssert(viewController != nil, "Wrong view controller instantiated")
    }

}
