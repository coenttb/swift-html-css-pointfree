///
/// FrameBorder.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the maxlength attribute on an element
    @discardableResult
    package func frameBorder(
        _ value: FrameBorder?
    ) -> _HTMLAttributes<Self> {
        self.attribute(FrameBorder.attribute, value?.description)
    }
}
