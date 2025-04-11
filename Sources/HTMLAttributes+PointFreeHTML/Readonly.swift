///
/// Readonly.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Adds the readonly attribute to the element
    package var readonly: _HTMLAttributes<Self> {
        self.attribute(Readonly.attribute)
    }
    
    /// Conditionally adds the readonly attribute to the element
    @HTMLBuilder
    package func readonly(
        _ value: Readonly?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
