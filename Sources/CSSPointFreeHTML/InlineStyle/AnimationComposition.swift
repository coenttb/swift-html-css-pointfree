//
//  AnimationComposition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func animationComposition(
        _ animationComposition: CSSPropertyTypes.AnimationComposition?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(animationComposition, media: media, selector: selector, pseudo: pseudo)
    }
}
