//
//  MyFirstEarlGrey2SwiftTest.swift
//  EarlGrey2ExperimentUITests
//
//  Created by Adil Hussain on 10/02/2021.
//

import XCTest

extension XCTestCase {
  fileprivate var host: SwiftTestsHost {
    return unsafeBitCast(
      GREYHostApplicationDistantObject.sharedInstance,
      to: SwiftTestsHost.self)
  }
}

class MyFirstEarlGrey2SwiftTest: XCTestCase {
    
    override func setUp() {
        let application = XCUIApplication()
        application.launch()
    }
    
    func test_preconditions() {
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_text("0"))
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(host.grey_SwiftUIText("0"))
        
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_text("Increment Count"))
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(host.grey_SwiftUIText("Increment Count"))
    }
    
    func test_tapping_the_increment_count_button_increments_the_value_in_the_count_label() {
        // When.
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).perform(grey_tap())
        
        // Then.
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_buttonTitle("1"))
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(host.grey_SwiftUIButtonTitle("1"))
    }
}
