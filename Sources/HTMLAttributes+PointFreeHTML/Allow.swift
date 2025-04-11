//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the allow attribute on an element
    @discardableResult
    package func allow(
        _ value: Allow?
    ) -> _HTMLAttributes<Self> {
        self.attribute("allow", value?.description)
    }
}
