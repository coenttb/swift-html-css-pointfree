//
//  Transform.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func transform(
        _ transform: CSSPropertyTypes.Transform?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(transform, media: media, selector: selector, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func transform(
        _ transform: String,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(
            Transform.property,
            transform,
            media: media,
            selector: selector,
            pseudo: pseudo
        )
    }
}
