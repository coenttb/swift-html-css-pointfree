//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLElementTypes

extension HTMLElementTypes.LineBreakOpportunity {
    public func callAsFunction() -> some HTML {
        HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}
