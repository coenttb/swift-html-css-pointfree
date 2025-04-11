///
/// Width.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 04/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLElementTypes

extension HTML {
    
    /// Sets the width attribute on an element
    @discardableResult
    package func width(
        _ value: Width?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Width.attribute, value?.description)
    }
}
