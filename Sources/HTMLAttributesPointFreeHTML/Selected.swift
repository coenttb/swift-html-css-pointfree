//
//  Selected.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

    /// Sets the selected attribute on an element
    @discardableResult
    package func selected(
        _ value: Selected?
    ) -> some PointFreeHTML.HTML {
        self.attribute(boolean: value)
    }
}
