//
//  ScrollMarginInline.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
  @discardableResult
  public func scrollMarginInline(
    _ scrollMarginInline: CSSPropertyTypes.ScrollMarginInline?,
    media: CSSAtRuleTypes.Media? = nil,
    selector: Selector? = nil,
    pseudo: Pseudo? = nil
  ) -> HTMLInlineStyle<Self> {
    self.inlineStyle(scrollMarginInline, media: media, selector: selector, pseudo: pseudo)
  }
}
