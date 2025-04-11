//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension script {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .src(self.src)
            .`async`(self.`async`)
            .`defer`(self.`defer`)
            .type(self.type)
            .integrity(self.integrity)
            .referrerPolicy(self.referrerpolicy)
            .nomodule(self.nomodule)
            .fetchPriority(self.fetchpriority)
            .blocking(self.blocking)
            .crossorigin(self.crossorigin)
            .nonce(self.nonce)
            .attributionSrc(self.attributionsrc)
    }
}
