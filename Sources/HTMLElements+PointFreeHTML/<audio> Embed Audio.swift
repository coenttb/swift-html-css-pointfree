//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Audio {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .src(self.src)
            .controls(self.controls)
            .autoplay(self.autoplay)
            .loop(self.loop)
            .muted(self.muted)
//            .preload(self.preload)
            .crossorigin(self.crossorigin)
//            .controlslist(self.controlslist)
            .disableRemotePlayback(self.disableremoteplayback)
    }
}
