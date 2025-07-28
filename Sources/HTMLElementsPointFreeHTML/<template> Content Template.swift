//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributesPointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.ContentTemplate {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
    ) -> some PointFreeHTML.HTML {
        HTMLElement(tag: Self.tag) { content() }
            .shadowRootMode(shadowrootmode)
            .shadowRootClonable(shadowrootclonable)
            .shadowRootDelegatesFocus(shadowrootdelegatesfocus)
    }
}
