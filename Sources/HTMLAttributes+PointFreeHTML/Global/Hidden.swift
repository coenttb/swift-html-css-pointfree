///
/// Hidden.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the hidden attribute with a specific value
    @discardableResult
    public func hidden(
        _ hidden: Hidden
    ) -> _HTMLAttributes<Self> {
        self.attribute(Hidden.attribute, hidden.description)
    }
    
    /// Sets the hidden attribute without a value (equivalent to hidden="")
    @discardableResult
    public func hidden() -> _HTMLAttributes<Self> {
        self.attribute(Hidden.attribute)
    }
}
