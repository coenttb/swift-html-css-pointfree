///
/// Autocomplete.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    
    @discardableResult
    package func autocomplete(
        _ value: Autocomplete?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Autocomplete.attribute, value?.description)
    }
}
