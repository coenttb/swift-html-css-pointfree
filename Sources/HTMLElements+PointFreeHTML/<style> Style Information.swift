//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Style {
    public func callAsFunction(@HTMLBuilder _ content: () -> some HTML) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .media(media)
            .blocking(blocking)
            .nonce(nonce)
            .title(title)
    }
}
