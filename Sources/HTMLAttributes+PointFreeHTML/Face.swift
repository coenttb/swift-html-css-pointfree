//
//  Face.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the face attribute on an element
    @discardableResult
    package func face(
        _ value: Face?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Face.attribute, value?.description)
    }
}
