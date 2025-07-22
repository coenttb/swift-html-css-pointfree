//
//  ColorInterpolation.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func colorInterpolation(
        _ colorInterpolation: CSSPropertyTypes.ColorInterpolation?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(colorInterpolation, media: media, pre: pre, pseudo: pseudo)
    }
}
