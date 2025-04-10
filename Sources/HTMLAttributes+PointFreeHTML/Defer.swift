//
//  Defer.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the defer attribute on an element
    @discardableResult
    package func `defer`(
        _ value: Defer?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Defer.attribute, value?.description)
    }
}
