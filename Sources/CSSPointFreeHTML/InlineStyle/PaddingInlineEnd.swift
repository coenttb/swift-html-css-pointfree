//
//  PaddingInlineEnd.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func paddingInlineEnd(
        _ paddingInlineEnd: CSSPropertyTypes.PaddingInlineEnd?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(paddingInlineEnd, media: media, selector: selector, pseudo: pseudo)
    }
}
