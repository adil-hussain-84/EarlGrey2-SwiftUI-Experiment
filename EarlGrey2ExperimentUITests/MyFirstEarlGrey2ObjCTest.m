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

- (void)test_key_window_is_present {
    [[EarlGrey selectElementWithMatcher:grey_keyWindow()] performAction:grey_tap()];
}

- (void)test_hello_world_label_is_visible {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"HelloWorldLabel")] assertWithMatcher:grey_sufficientlyVisible()];
}

- (void)test_hello_world_label_has_expected_text {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"HelloWorldLabel")] assertWithMatcher:grey_text(@"Hello, world!")];
}

@end
