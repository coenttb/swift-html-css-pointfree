//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension Image: PointFreeHTML.HTML {
    public var body: some HTML {
        PointFreeHTML.img()
            .src(self.src)
            .alt(self.alt)
            .attribute("loading", self.loading?.rawValue)
    }
}

