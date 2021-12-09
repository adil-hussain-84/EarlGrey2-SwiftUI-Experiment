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

- (void)testIfKeyWindowIsPresent {
  // XCUITest Setup
  XCUIApplication *application = [[XCUIApplication alloc] init];
  [application launch];

  // EarlGrey Statement
  [[EarlGrey selectElementWithMatcher:grey_keyWindow()] performAction:grey_tap()];
}

@end
