//
//  GREYHostApplicationDistantObject+SwiftTestsHost.swift
//  HelperBundle
//
//  Created by Adil Hussain on 05/01/2022.
//

import Foundation
import SwiftUI

extension GREYHostApplicationDistantObject: SwiftTestsHost {
    
    public func grey_SwiftUIText(_ text: String) -> GREYMatcher {
        let matches: GREYMatchesBlock = { element in
            // TODO: Extract the text in 'element' and compare it to 'text'
            return false
        }
        return GREYElementMatcherBlock(matchesBlock: matches) { description -> Void in
            description.appendText("SwiftUIText('\(text)')")
        }
    }
    
    public func grey_SwiftUIButtonTitle(_ title: String) -> GREYMatcher {
        let matches: GREYMatchesBlock = { element in
            // TODO: Extract the title in 'element' and compare it to 'title'
            return false
        }
        return GREYElementMatcherBlock(matchesBlock: matches) { description -> Void in
            description.appendText("SwiftUIButtonTitle('\(title)')")
        }
    }
}
