///
/// Itemscope.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Sets the itemscope attribute, creating a new microdata item
    public var itemscope: _HTMLAttributes<Self> {
        self.attribute(Itemscope.attribute)
    }

    /// Sets the itemscope attribute using an Itemscope enum value
    @discardableResult
    public func itemscope(
        _ value: Itemscope?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
