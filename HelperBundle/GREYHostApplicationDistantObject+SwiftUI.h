//
//  GREYHostApplicationDistantObject+SwiftUI.h
//  HelperBundle
//
//  Created by Adil Hussain on 15/12/2021.
//

#import <UIKit/UIKit.h>

#import "EarlGreyApp.h"
#import "GREYHostApplicationDistantObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface GREYHostApplicationDistantObject (SwiftUI)

- (id<GREYAssertion>)assertionWithSwiftUIText;

@end

NS_ASSUME_NONNULL_END
