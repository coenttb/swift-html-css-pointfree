//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import Foundation
import PointFreeHTML
import Dependencies
import SnapshotTesting

extension Snapshotting where Value: PointFreeHTML.HTMLDocument, Format == String {
    public static var html: Self {
        Snapshotting<String, String>.lines.pullback { value in
            return withDependencies {
                $0.htmlPrinter = .init(.pretty)
            } operation: {
                String(bytes: value.render(), encoding: .utf8) ?? "HTML rendering failed"
            }
        }
    }
}

extension Snapshotting where Value: HTML, Format == String {
    public static var html: Self {
        Snapshotting<String, String>.lines.pullback { value in
            
            return withDependencies {
                $0.htmlPrinter = .init(.pretty)
            } operation: {
                String(bytes: value.render(), encoding: .utf8) ?? "HTML rendering failed"
            }
        }
    }
}

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

