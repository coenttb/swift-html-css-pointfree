//
//  Async.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the async attribute on an element
    @discardableResult
    package func async(
        _ value: Async?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
