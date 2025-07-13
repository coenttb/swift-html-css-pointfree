///
/// Inputmode.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Sets the inputmode attribute to hint at what type of virtual keyboard to display
    @discardableResult
    public func inputmode(
        _ mode: Inputmode?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Inputmode.attribute, mode?.description)
    }
}
