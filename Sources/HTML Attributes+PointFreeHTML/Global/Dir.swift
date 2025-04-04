///
/// Dir.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the text direction for an HTML element
    @discardableResult
    public func dir(
        _ value: Dir
    ) -> _HTMLAttributes<Self> {
        self.attribute(Dir.attribute, value.description)
    }
}
