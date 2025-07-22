//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.InlineFrame {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .src(self.src)
            .attribute("srcdoc", self.srcdoc)
            .name(self.name)
            .attribute("sandbox", self.sandbox)
            .allowfullscreen(self.allowfullscreen)
            .allow(self.allow)
            .width(self.width)
            .height(self.height)
            .loading(self.loading)
            .referrerPolicy(self.referrerpolicy)
    }
}
