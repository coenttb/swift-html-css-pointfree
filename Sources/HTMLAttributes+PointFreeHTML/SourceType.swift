//
//  ScriptType.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

    /// Sets the type attribute on a script element
    @discardableResult
    package func type(
        _ value: SourceType?
    ) -> _HTMLAttributes<Self> {
        self.attribute(SourceType.attribute, value?.description)
    }
}
