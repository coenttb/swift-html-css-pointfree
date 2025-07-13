///
/// Required.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Adds the required attribute to the element
    package var required: _HTMLAttributes<Self> {
        self.attribute(Required.attribute)
    }

    /// Conditionally adds the required attribute to the element
    @HTMLBuilder
    package func required(
        _ value: Required?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
