///
/// Novalidate.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Add the novalidate attribute to disable browser validation for a form
    package var novalidate: _HTMLAttributes<Self> {
        self.attribute(Novalidate.attribute)
    }
    
    /// Conditionally adds the required attribute to the element
    @HTMLBuilder
    package func novalidate(_ value: Novalidate?) -> some HTML {
        if value == true {
            self.attribute(Novalidate.attribute)
        } else {
            self
        }
    }
    
    /// Conditionally adds the novalidate attribute to the element
    @discardableResult
    @HTMLBuilder
    package func novalidate(_ value: Bool?) -> some HTML {
        if value == true {
            self.novalidate
        }
        self
    }
}
