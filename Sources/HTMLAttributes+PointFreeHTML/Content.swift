//
//  Content.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLElementTypes

extension HTML {
    
    /// Sets the content attribute on an element
    @discardableResult
    package func content(
        _ value: HTMLElementTypes.Content?
    ) -> _HTMLAttributes<Self> {
        self.attribute(HTMLElementTypes.Content.attribute, value?.description)
    }
}
