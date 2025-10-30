//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import HTMLAttributesPointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Image: PointFreeHTML.HTML {
  public var body: some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag)
      .src(self.src)
      .alt(self.alt)
      .loading(self.loading)
  }
}
