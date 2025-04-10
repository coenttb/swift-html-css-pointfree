///
/// Crossorigin.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    @discardableResult
    package func crossorigin(
        _ value: Crossorigin?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Crossorigin.attribute, value?.description)
    }
    
//    @discardableResult
//    package func crossorigin(
//        _ policy: CrosPolicy
//    ) -> _HTMLAttributes<Self> {
//        self.crossorigin(Crossorigin(policy))
//    }
}
