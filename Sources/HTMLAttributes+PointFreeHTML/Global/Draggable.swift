///
/// Draggable.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets whether an element is draggable
    @discardableResult
    public func draggable(
        _ value: Draggable
    ) -> _HTMLAttributes<Self> {
        self.attribute(Draggable.attribute, value.description)
    }
    
    /// Shorthand to set draggable="true"
    public var draggable: _HTMLAttributes<Self> {
        self.draggable(.true)
    }
}
//
