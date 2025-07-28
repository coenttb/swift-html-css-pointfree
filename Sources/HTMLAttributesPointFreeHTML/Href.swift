//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Add an href attribute to specify a hyperlink destination
    @discardableResult
    public func href(
        _ value: Href?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Href.attribute, value?.description)
    }
}
