///
/// Method.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Add a method attribute to specify the HTTP method for form submission
    @discardableResult
    package func method(
        _ value: HTMLAttributeTypes.Method?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Method.attribute, value?.description)
    }
}
