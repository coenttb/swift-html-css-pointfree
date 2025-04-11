//
//  FormNovalidate.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the formnovalidate attribute on an element
    @discardableResult
    package func formNovalidate(
        _ value: FormNovalidate?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
