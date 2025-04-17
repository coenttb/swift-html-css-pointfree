//
//  BorderBottomRightRadius.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func borderBottomRightRadius(
        _ borderBottomRightRadius: CSSPropertyTypes.BorderBottomRightRadius?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(borderBottomRightRadius, media: media, pre: pre, pseudo: pseudo)
    }
}
