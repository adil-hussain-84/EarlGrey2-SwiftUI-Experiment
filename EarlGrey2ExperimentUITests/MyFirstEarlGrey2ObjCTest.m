//
//  MyFirstEarlGrey2ObjCTest.m
//  EarlGrey2ExperimentUITests
//
//  Created by Adil Hussain on 09/12/2021.
//

#import <XCTest/XCTest.h>

#import "TestLib/EarlGreyImpl/EarlGrey.h"

@interface MyFirstEarlGrey2ObjCTest : XCTestCase
@end

@implementation MyFirstEarlGrey2ObjCTest

- (void)setUp {
    XCUIApplication *application = [[XCUIApplication alloc] init];
    [application launch];
}

- (void)test_preconditions {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"CountLabel")] assertWithMatcher:grey_sufficientlyVisible()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"CountLabel")] assertWithMatcher:grey_text(@"0")];
    
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"IncrementCountButton")] assertWithMatcher:grey_sufficientlyVisible()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"IncrementCountButton")] assertWithMatcher:grey_text(@"Increment Count")];
}

- (void)test_tapping_the_increment_count_button_increments_the_value_in_the_count_label {
    // When.
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"IncrementCountButton")] performAction:grey_tap()];
    
    // Then.
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"CountLabel")] assertWithMatcher:grey_text(@"1")];
}

@end
