//
//  ColSpan.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the colspan attribute on an element
    @discardableResult
    package func abbr(
        _ value: HTMLAttributeTypes.Abbr?
    ) -> _HTMLAttributes<Self> {
        self.attribute(HTMLAttributeTypes.Abbr.attribute, value?.description)
    }
}
