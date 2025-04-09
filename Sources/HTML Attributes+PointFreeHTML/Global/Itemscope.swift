///
/// Itemscope.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the itemscope attribute, creating a new microdata item
    @discardableResult
    public func itemscope() -> _HTMLAttributes<Self> {
        self.attribute(Itemscope.attribute, "")
    }
    
    /// Sets the itemscope attribute using an Itemscope enum value
    @discardableResult
    public func itemscope(
        _ attribute: Itemscope?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Itemscope.attribute)
    }
}
