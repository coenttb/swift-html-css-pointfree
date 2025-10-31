//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributesPointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.TableHeader {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
      .abbr(self.abbr)
      .colspan(self.colspan)
      .headers(self.headers)
      .rowspan(self.rowspan)
      .scope(self.scope)
  }
}
