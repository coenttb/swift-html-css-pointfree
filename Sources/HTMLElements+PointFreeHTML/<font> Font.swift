//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Font {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .color(self.color)
            .face(self.face)
            .size(self.size)
    }
}
