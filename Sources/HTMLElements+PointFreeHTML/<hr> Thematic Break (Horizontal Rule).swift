//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLElementTypes
import PointFreeHTML

extension HTMLElementTypes.ThematicBreak: @retroactive PointFreeHTML.HTML {
    public var body: PointFreeHTML.HTMLElement<HTMLEmpty> {
        PointFreeHTML.HTMLElement(tag: Self.tag) { PointFreeHTML.HTMLEmpty() }
    }
}
