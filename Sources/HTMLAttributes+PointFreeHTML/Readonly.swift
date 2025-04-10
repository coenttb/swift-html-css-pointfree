///
/// Readonly.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Adds the readonly attribute to the element
    package var readonly: _HTMLAttributes<Self> {
        self.attribute(Readonly.attribute)
    }
    
    /// Conditionally adds the readonly attribute to the element
    @HTMLBuilder
    package func readonly(_ value: Readonly?) -> some HTML {
        if value == true {
            self.attribute(Readonly.attribute)
        } else {
            self
        }
    }
    
    /// Conditionally adds the readonly attribute to the element
    @discardableResult
    @HTMLBuilder
    package func readonly(_ value: Bool?) -> some HTML {
        if value == true {
            self.readonly
        }
        self
    }
}
