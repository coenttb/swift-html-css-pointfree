//
//  High.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the high attribute on an element
    @discardableResult
    package func high(
        _ value: High?
    ) -> _HTMLAttributes<Self> {
        self.attribute(High.attribute, value?.description)
    }
}
