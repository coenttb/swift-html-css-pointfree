///
/// Capture.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    @discardableResult
    package func capture(
        _ value: Capture?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Capture.attribute, value?.description)
    }
}
