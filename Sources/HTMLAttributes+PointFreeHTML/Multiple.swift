///
/// Multiple.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Adds the multiple attribute to the element
    package var multiple: _HTMLAttributes<Self> {
        self.attribute(Multiple.attribute)
    }
    
    /// Conditionally adds the multiple attribute to the element
    @HTMLBuilder
    package func multiple(_ value: Multiple?) -> some HTML {
        if value == true {
            self.attribute(Multiple.attribute)
        } else {
            self
        }
    }
    
    /// Conditionally adds the multiple attribute to the element
    @discardableResult
    @HTMLBuilder
    package func multiple(_ value: Bool?) -> some HTML {
        if value == true {
            self.multiple
        }
        self
    }
}
