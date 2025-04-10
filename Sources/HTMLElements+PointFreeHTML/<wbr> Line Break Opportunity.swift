//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLElementTypes

extension wbr {
    public func callAsFunction() -> some HTML {
        HTMLElement(tag: Self.tag) { HTMLEmpty() }
    }
}
