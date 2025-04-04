//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation
import HTML_Attributes_HTML
import HTML_Elements

extension Image: PointFreeHTML.HTML {
    public var body: some HTML {
        PointFreeHTML.img()
            .src(self.src)
            .alt(self.alt)
            .attribute("loading", self.loading?.rawValue)
//            .attribute("src", source)
//            .attribute("alt", description)
//            .maxWidth(100.percent)
    }
}

public typealias image = Image
public typealias img = Image
