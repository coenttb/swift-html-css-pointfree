//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//

import HTMLElementTypes
import PointFreeHTML

protocol HTMLElementNoAttributes: HTMLElementTypes.HTMLElement { }

extension HTMLElementNoAttributes {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
    ) -> some PointFreeHTML.HTML {
        HTMLElement(tag: Self.tag) { content() }
    }
}
