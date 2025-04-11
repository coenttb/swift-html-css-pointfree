//
//  Preload.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the preload attribute on an element
    @discardableResult
    package func preload(
        _ value: Preload?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Preload.attribute, value?.description)
    }
}
