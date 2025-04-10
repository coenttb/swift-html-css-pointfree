///
/// Minlength.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the minlength attribute on an element
    @discardableResult
    package func minlength(
        _ value: Minlength?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Minlength.attribute, value?.description)
    }
}
