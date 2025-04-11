//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension base {
    @HTMLBuilder
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        let element = HTMLElement(tag: Self.tag) { content() }
        switch self.configuration {
        case .href(let href):
             element.href(href)
        case .target(let target):
             element.target(target)
        case .both(let href, let target):
             element
                .href(href)
                .target(target)
        }
    }
}
