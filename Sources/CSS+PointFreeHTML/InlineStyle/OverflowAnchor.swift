//
//  OverflowAnchor.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func overflowAnchor(
        _ overflowAnchor: CSSPropertyTypes.OverflowAnchor?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(overflowAnchor, media: media, pre: pre, pseudo: pseudo)
    }
}
