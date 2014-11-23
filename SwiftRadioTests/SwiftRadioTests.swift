//
//  SwiftRadioTests.swift
//  SwiftRadioTests
//
//  Created by dev on 11/20/14.
//  Copyright (c) 2014 dev. All rights reserved.
//

import UIKit
import XCTest
import SwiftRadio

let streamUrl = "http://manager2.radioking.fr:8846/stream"

class Player: RadioDelegate {
    func updateBuffering(value: Bool) {}
    func interruptRadio() {}
    func resumeInterruptedRadio() {}
    func networkChanged() {}
    func connectProblem() {}
    func audioUnplugged() {}
    func metaTitleUpdated(title: String) {}
}

class SwiftRadioTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRadioConnection() {
        let player = Player(), radio = Radio(delegate: player)
        XCTAssertTrue(radio.connect(streamUrl,gain: 1.0))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
