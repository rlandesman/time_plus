//
//  Time_Tests.swift
//  Time+Tests
//
//  Created by LibLabs-Mac on 11/28/19.
//  Copyright © 2019 LibLabs-Mac. All rights reserved.
//

import XCTest
@testable import Time_

class Time_Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        do{
        for event in try EventsDatabase.sharedInstance.getEvents(time: "14:20", date: "2020-Jan-05"){
            print(event[EventsDatabase.sharedInstance.columns.startTime])
        }
        }
            catch{
                fatalError("test failed")
            }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}