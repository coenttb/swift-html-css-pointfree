//
//  Direction.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the direction attribute on an element
    @discardableResult
    package func direction(
        _ value: Direction?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Direction.attribute, value?.description)
    }
}
