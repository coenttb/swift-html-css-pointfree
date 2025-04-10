///
/// Enterkeyhint.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the Enter key label/action hint for virtual keyboards
    @discardableResult
    public func enterkeyhint(
        _ value: Enterkeyhint
    ) -> _HTMLAttributes<Self> {
        self.attribute(Enterkeyhint.attribute, value.description)
    }
}
