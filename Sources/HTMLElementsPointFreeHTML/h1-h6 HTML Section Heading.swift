//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributesPointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.H1 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}

extension HTMLElementTypes.H2 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}

extension HTMLElementTypes.H3 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}

extension HTMLElementTypes.H4 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}

extension HTMLElementTypes.H5 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}

extension HTMLElementTypes.H6 {
  public func callAsFunction(
    @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
  ) -> some PointFreeHTML.HTML {
    HTMLElement(tag: Self.tag) { content() }
  }
}
