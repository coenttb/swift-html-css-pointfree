//
//  GridTemplateAreas.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func gridTemplateAreas(
        _ gridTemplateAreas: CSSPropertyTypes.GridTemplateAreas?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(gridTemplateAreas, media: media, pre: pre, pseudo: pseudo)
    }
}
