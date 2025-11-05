//
//  Content.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

    /// Sets the content attribute on an element
    @discardableResult
    package func content(
        _ value: HTMLAttributeTypes.Content?
    ) -> _HTMLAttributes<Self> {
        self.attribute(HTMLAttributeTypes.Content.attribute, value?.description)
    }
}
