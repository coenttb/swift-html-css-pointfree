//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 15/04/2025.
//

import PointFreeHTML

public struct HTMLDocument<Body: HTML, Head: HTML>: PointFreeHTML.HTMLDocument {
    public let head: Head
    
    public let body: Body
    
    public init(
        @HTMLBuilder head: () -> Head = { HTMLEmpty() },
        @HTMLBuilder body: () -> Body
    ) {
        self.body = body()
        self.head = head()
    }
}
