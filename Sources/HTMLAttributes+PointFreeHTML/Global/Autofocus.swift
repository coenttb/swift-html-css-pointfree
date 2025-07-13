///
/// Autofocus.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    public var autofocus: _HTMLAttributes<Self> {
        self.attribute(Autofocus.attribute)
    }
}

extension HTML {
    @discardableResult
    public func autofocus(
        _ value: Autofocus?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
