///
/// Placeholder.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the placeholder attribute on an element
    @discardableResult
    package func placeholder(
        _ value: Placeholder?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Placeholder.attribute, value?.description)
    }
}
