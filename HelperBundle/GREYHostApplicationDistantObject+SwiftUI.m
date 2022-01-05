//
//  GREYHostApplicationDistantObject+SwiftUI.m
//  HelperBundle
//
//  Created by Adil Hussain on 15/12/2021.
//

#import "GREYHostApplicationDistantObject+SwiftUI.h"

@implementation GREYHostApplicationDistantObject (SwiftUI)

- (id<GREYAssertion>)assertionWithSwiftUIText {
    return [GREYAssertionBlock assertionWithName:@"TestSwiftUIText"
                         assertionBlockWithError:^BOOL(UIView *view, NSError *__strong *errorOrNil) {
        if (![view isKindOfClass:[UIView class]]) {
            return NO;
        }
        
        return YES;
    }];
}

@end
