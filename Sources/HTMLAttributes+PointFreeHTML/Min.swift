///
/// Min.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the min attribute on an element
    @discardableResult
    package func min(
        _ value: Min?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Min.attribute, value?.description)
    }
}
 
//extension HTML {
//    /// Sets the min attribute with a date value and format
//    @discardableResult
//    package func min(
//        date: Date,
//        format: Min.DateFormat = .fullDate
//    ) -> _HTMLAttributes<Self> {
//        self.min(Min(date: date, format: format))
//    }
//}
