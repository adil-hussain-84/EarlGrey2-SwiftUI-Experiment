//
//  SwiftTestsHost.swift
//  HelperBundle
//
//  Created by Adil Hussain on 05/01/2022.
//

import Foundation
import UIKit

@objc
protocol SwiftTestsHost {
    
    func grey_SwiftUIText(_ text: String) -> GREYMatcher
    
    func grey_SwiftUIButtonTitle(_ title: String) -> GREYMatcher
}
