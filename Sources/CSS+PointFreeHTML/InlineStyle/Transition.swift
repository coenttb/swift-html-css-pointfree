//
//  Transition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func transition(
        _ transition: CSSPropertyTypes.Transition?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(transition, media: media, pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func transition(
        _ transition: String,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(Transition.property, transition, media: media, pre: pre, pseudo: pseudo)
    }
}
