//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//


extension String: @retroactive HTML {
    public var body: some HTML {
        HTMLText(self)
    }
}
