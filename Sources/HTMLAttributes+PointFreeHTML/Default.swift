//
//  Default.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the default attribute on an element
    @discardableResult
    package func `default`(
        _ value: Default?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Default.attribute, value?.description)
    }
}
