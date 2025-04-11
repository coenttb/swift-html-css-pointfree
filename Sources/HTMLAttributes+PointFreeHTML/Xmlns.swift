//
//  File 3.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLElementTypes

extension HTML {
    
    /// Sets the xmlns attribute on an element
    @discardableResult
    package func xmlns(
        _ value: Xmlns?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Xmlns.attribute, value?.description)
    }
}
