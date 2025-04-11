//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension meter {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .value(self.value)
            .min(self.min)
            .max(self.max)
            .low(self.low)
            .high(self.high)
            .optimum(self.optimum)
            .form(self.form)
    }
}
