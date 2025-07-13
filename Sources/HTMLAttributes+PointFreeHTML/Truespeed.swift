//
//  File 2.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    /// Adds the truespeed attribute to the element
    package var truespeed: _HTMLAttributes<Self> {
        self.attribute(Truespeed.attribute)
    }

    /// Conditionally adds the truespeed attribute to the element
    @HTMLBuilder
    package func truespeed(
        _ value: Truespeed?
    ) -> some HTML {
        self.attribute(boolean: value)
    }
}
