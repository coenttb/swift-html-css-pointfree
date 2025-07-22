//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import PointFreeHTML

@TaskLocal var div = HTMLElement(tag: "div") { HTMLEmpty() }

extension HTMLElement: @unchecked @retroactive Sendable where Content: Sendable {}
extension HTMLEmpty: @unchecked @retroactive Sendable {}
