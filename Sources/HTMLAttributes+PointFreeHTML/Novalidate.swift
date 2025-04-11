///
/// Novalidate.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Add the novalidate attribute to disable browser validation for a form
    package var novalidate: _HTMLAttributes<Self> {
        self.attribute(Novalidate.attribute)
    }
    
    /// Conditionally adds the required attribute to the element
    @HTMLBuilder
    package func novalidate(
        _ value: Novalidate?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
