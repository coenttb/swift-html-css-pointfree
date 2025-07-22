//
//  Border.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    @_disfavoredOverload
    public func border(
        _ border: CSSPropertyTypes.Border?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(border, media: media, pre: pre, pseudo: pseudo)
    }
}
