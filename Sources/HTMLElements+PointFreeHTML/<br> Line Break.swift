//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLElementTypes

extension HTMLElementTypes.BR: @retroactive HTML {}

extension HTMLElementTypes.BR: HTMLVoidElement {
    @HTMLBuilder
    public var body: some HTML {
        HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}
