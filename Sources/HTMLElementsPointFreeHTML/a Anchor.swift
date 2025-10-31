//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import HTMLAttributesPointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Anchor {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
      .attributionSrc(self.attributionsrc)
      .download(self.download)
      .href(self.href)
      .hreflang(self.hreflang)
      .ping(self.ping)
      .referrerPolicy(self.referrerpolicy)
      .rel(self.rel)
      .target(self.target)
  }
}
