//
//  Open.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the open attribute on an element
    @discardableResult
    package func open(
        _ value: Open?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
