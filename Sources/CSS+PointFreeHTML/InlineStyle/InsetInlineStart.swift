//
//  InsetInlineStart.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func insetInlineStart(
        _ insetInlineStart: CSSPropertyTypes.InsetInlineStart?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(insetInlineStart, media: media, pre: pre, pseudo: pseudo)
    }
}
