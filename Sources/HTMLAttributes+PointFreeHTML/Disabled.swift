///
/// Disabled.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Adds the disabled attribute to the element
    package var disabled: _HTMLAttributes<Self> {
        self.attribute(Disabled.attribute)
    }
    
    /// Conditionally adds the disabled attribute to the element
    @HTMLBuilder
    package func disabled(_ value: Disabled?) -> some HTML {
        if value == true {
            self.attribute(Disabled.attribute)
        } else {
            self
        }
    }
}
