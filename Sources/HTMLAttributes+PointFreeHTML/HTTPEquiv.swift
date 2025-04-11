//
//  Headers.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes
import HTMLElementTypes

extension HTML {
    
    /// Sets the httpEquiv attribute on an element
    @discardableResult
    package func httpEquiv(
        _ value: Meta.HttpEquiv?
    ) -> _HTMLAttributes<Self> {
        self.attribute("http-equiv", value?.description)
    }
}
