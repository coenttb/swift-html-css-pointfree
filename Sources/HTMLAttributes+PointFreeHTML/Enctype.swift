///
/// Enctype.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Add an enctype attribute to specify the form data encoding type
    @discardableResult
    package func enctype(
        _ value: Enctype?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Enctype.attribute, value?.description)
    }
}
