//
//  Open.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the open attribute on an element
    @discardableResult
    package func open(
        _ value: Open?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Open.attribute, value?.description)
    }
}
