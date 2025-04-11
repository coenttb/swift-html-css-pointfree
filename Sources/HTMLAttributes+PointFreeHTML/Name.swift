///
/// Name.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 04/04/2025.
///

import PointFreeHTML
import HTMLElementTypes

extension HTML {
    /// Sets the name attribute on an element
    @discardableResult
    package func name(
        _ value: Name?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Name.attribute, value?.description)
    }
}


extension HTML {
    /// Sets the name attribute on an element
    @discardableResult
    package func name(
        _ value: Meta.Name?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Name.attribute, value?.description)
    }
}
