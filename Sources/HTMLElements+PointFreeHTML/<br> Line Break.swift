//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLElementTypes

extension BR: @retroactive HTML {}

extension BR: HTMLVoidElement {
    @HTMLBuilder
    public var body: some HTML {
        HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}
