///
/// Autocapitalize.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    @discardableResult
    public func autocapitalize(
        _ value: Autocapitalize?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Autocapitalize.attribute, value?.description)
    }
}
