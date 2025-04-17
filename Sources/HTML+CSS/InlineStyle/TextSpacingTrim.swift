//
//  TextSpacingTrim.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func textSpacingTrim(
        _ textSpacingTrim: CSSPropertyTypes.TextSpacingTrim?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(textSpacingTrim, media: media, pre: pre, pseudo: pseudo)
    }
}
