///
/// EncType.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Add an EncType attribute to specify the form data encoding type
    @discardableResult
    package func EncType(
        _ value: HTMLAttributeTypes.EncType?
    ) -> _HTMLAttributes<Self> {
        self.attribute(HTMLAttributeTypes.EncType.attribute, value?.description)
    }
}
