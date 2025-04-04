///
/// Inert.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the inert attribute, making the element and all its descendants non-interactive
    @discardableResult
    public func inert() -> _HTMLAttributes<Self> {
        self.attribute(Inert.attribute)
    }
}
