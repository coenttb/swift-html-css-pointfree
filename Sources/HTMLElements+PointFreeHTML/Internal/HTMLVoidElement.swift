//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//

import Foundation
import PointFreeHTML
import HTMLElementTypes

public protocol HTMLVoidElement: HTML {}

extension HTMLVoidElement where Self: Element {
    public func callAsFunction() -> HTMLElement<HTMLEmpty> {
        .init(tag: Self.tag) { HTMLEmpty() }
    }
}

//extension area: HTMLVoidElement {}
//extension base: HTMLVoidElement {}


//extension col: HTMLVoidElement {}
//extension embed: HTMLVoidElement {}
//extension hr: HTMLVoidElement {}
//extension img: HTMLVoidElement {}
//extension input: HTMLVoidElement {}
//extension link: HTMLVoidElement {}
//extension meta: HTMLVoidElement {}
//extension param: HTMLVoidElement {}
//extension source: HTMLVoidElement {}
//extension track: HTMLVoidElement {}
//extension wbr: HTMLVoidElement {}
