//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//

import HTMLElementTypes
import PointFreeHTML

extension HTMLVoidElement where Self: HTMLElementTypes.HTMLElement & HTML {
    public var body: PointFreeHTML.HTMLElement<HTMLEmpty> {
        PointFreeHTML.HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}

extension HTMLVoidElement where Self: HTMLElementTypes.HTMLElement & HTML {
    public func callAsFunction(
    ) -> some PointFreeHTML.HTML {
        self
    }
}
