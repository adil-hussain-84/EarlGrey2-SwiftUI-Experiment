//
//  MyFirstEarlGrey2SwiftTest.swift
//  EarlGrey2ExperimentUITests
//
//  Created by Adil Hussain on 10/02/2021.
//

import XCTest
import SwiftUI

class MyFirstEarlGrey2SwiftTest: XCTestCase {
    
    override func setUp() {
        let application = XCUIApplication()
        application.launch()
    }
    
    func test_preconditions() {
        let matcher = GREYElementMatcherBlock.matcher { element in
//            guard let foo = element as? EDOObject else {
//                return false
//            }
//            NSLog("%@", foo.className)
            return false
        } descriptionBlock: { description in
            description.appendText("Don't know; Don't care")
        };

        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(matcher)
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_text("0"))
        
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_text("Increment Count"))
    }
    
    func test_tapping_the_increment_count_button_increments_the_value_in_the_count_label() {
        // When.
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).perform(grey_tap())
        
        // Then.
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_text("1"))
    }
}
