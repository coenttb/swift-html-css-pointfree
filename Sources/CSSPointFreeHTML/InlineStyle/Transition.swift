//
//  Transition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func transition(
        _ transition: CSSPropertyTypes.Transition?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(transition, media: media, selector: selector, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func transition(
        _ transition: String,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(
            Transition.property,
            transition,
            media: media,
            selector: selector,
            pseudo: pseudo
        )
    }
}
