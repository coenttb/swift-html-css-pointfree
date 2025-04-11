//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the step attribute on an element
    @discardableResult
    package func srcLang(
        _ value: SrcLang?
    ) -> _HTMLAttributes<Self> {
        self.attribute(SrcLang.attribute, value?.description)
    }
}
