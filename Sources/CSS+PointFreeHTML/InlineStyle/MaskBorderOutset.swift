//
//  MaskBorderOutset.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func maskBorderOutset(
        _ maskBorderOutset: CSSPropertyTypes.MaskBorderOutset?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(maskBorderOutset, media: media, selector: selector, pseudo: pseudo)
    }
}
