//
//  Reversed.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the reversed attribute on an element
    @discardableResult
    package func reversed(
        _ value: Reversed?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Reversed.attribute, value?.description)
    }
}
