//
//  ContainIntrinsicInlineSize.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func containIntrinsicInlineSize(
        _ containIntrinsicInlineSize: CSSPropertyTypes.ContainIntrinsicInlineSize?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(containIntrinsicInlineSize, media: media, selector: selector, pseudo: pseudo)
    }
}
