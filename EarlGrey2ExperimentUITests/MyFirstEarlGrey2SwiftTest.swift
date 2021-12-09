//
//  MyFirstEarlGrey2SwiftTest.swift
//  EarlGrey2ExperimentUITests
//
//  Created by Adil Hussain on 10/02/2021.
//

import XCTest

class MyFirstEarlGrey2SwiftTest: XCTestCase {

    func testExample() {
        let application: XCUIApplication = XCUIApplication()
        application.launch()
        
        EarlGrey.selectElement(with: grey_keyWindow()).perform(grey_tap())
      }
}
