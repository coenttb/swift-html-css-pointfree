//
//  Color.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
  @_disfavoredOverload
  @discardableResult
  public func color(
    _ color: CSSPropertyTypes.Color?,
    media: CSSAtRuleTypes.Media? = nil,
    selector: Selector? = nil,
    pseudo: Pseudo? = nil
  ) -> HTMLInlineStyle<Self> {
    self.inlineStyle(color, media: media, selector: selector, pseudo: pseudo)
  }
}
