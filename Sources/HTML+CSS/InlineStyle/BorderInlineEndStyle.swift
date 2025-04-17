//
//  BorderInlineEndStyle.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func borderInlineEndStyle(
        _ borderInlineEndStyle: CSSPropertyTypes.BorderInlineEndStyle?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(borderInlineEndStyle, media: media, pre: pre, pseudo: pseudo)
    }
}
