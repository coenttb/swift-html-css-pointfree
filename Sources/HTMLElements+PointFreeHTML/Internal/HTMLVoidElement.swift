//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//

import Foundation
import PointFreeHTML
import HTMLElementTypes

extension HTMLVoidElement where Self: HTMLElementTypes.HTMLElement {
    public func callAsFunction() -> PointFreeHTML.HTMLElement<HTMLEmpty> {
        .init(tag: Self.tag) { HTMLEmpty() }
    }
}

