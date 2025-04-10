//
//  Nomodule.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the nomodule attribute on an element
    @discardableResult
    package func nomodule(
        _ value: Nomodule?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Nomodule.attribute, value?.description)
    }
}
