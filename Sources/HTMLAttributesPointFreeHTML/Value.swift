///
/// Value.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 04/04/2025.
///

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Sets the value attribute on an element
    @discardableResult
    package func value<Element: CustomStringConvertible>(
        _ value: Value<Element>?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Value<Element>.attribute, value?.description)
    }
}
