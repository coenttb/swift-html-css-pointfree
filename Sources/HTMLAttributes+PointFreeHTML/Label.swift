//
//  Label.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the disablepictureinpicture attribute on an element
    @discardableResult
    @_disfavoredOverload
    package func label(
        _ value: HTMLAttributeTypes.Label?
    ) -> _HTMLAttributes<Self> {
        self.attribute(HTMLAttributeTypes.Label.attribute, value?.description)
    }
}
