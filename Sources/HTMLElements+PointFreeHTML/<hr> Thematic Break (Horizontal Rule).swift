//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.ThematicBreak: @retroactive HTML {}
extension HTMLElementTypes.ThematicBreak: HTMLVoidElement {
    @HTMLBuilder
    public var body: some HTML {
        HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}
