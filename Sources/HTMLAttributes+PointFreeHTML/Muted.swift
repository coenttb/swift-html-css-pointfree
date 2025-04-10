//
//  Muted.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the muted attribute on an element
    @discardableResult
    package func muted(
        _ value: Muted?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Muted.attribute, value?.description)
    }
}
