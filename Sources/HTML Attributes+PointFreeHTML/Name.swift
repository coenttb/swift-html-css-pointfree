///
/// Name.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 04/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the name attribute on an element
    @discardableResult
    package func name(
        _ value: Name?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Name.attribute, value?.description)
    }
}
