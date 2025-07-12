//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.TableDataCell {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .colspan(self.colspan)
            .headers(self.headers)
            .rowspan(self.rowspan)
    }
}
