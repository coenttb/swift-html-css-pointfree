//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Video {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .src(self.src)
            .controls(self.controls)
            .autoplay(self.autoplay)
            .poster(self.poster)
            .loop(self.loop)
            .muted(self.muted)
            .width(self.width)
            .height(self.height)
            .preload(self.preload)
            .playsinline(self.playsinline)
            .crossorigin(self.crossorigin)
            .controlsList(self.controlslist)
            .disablePictureInPicture(self.disablepictureinpicture)
            .disableRemotePlayback(self.disableremoteplayback)
    }
}
