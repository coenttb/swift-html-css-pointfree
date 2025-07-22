//
//  PositionAnchor.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func positionAnchor(
        _ positionAnchor: CSSPropertyTypes.PositionAnchor?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(positionAnchor, media: media, pre: pre, pseudo: pseudo)
    }
}
