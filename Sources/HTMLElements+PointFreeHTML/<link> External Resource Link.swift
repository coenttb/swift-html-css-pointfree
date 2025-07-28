//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Link {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
    ) -> some PointFreeHTML.HTML {
        HTMLElement(tag: Self.tag) { content() }
            .`as`(self.`as`)
            .blocking(self.blocking)
            .crossorigin(self.crossorigin)
            .disabled(self.disabled)
            .fetchPriority(self.fetchpriority)
            .href(self.href)
            .hreflang(self.hreflang)
            .sizes(self.imagesizes)
            .srcset(self.imagesrcset)
            .integrity(self.integrity)
            .media(self.media)
            .referrerPolicy(self.referrerpolicy)
            .rel(self.rel)
            .sizes(self.sizes)
            .title(self.title)
            .type(self.type)
    }
}
