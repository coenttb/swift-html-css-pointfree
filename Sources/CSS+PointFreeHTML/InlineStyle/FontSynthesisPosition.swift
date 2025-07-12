//
//  FontSynthesisPosition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func fontSynthesisPosition(
        _ fontSynthesisPosition: CSSPropertyTypes.FontSynthesisPosition?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(fontSynthesisPosition, media: media, pre: pre, pseudo: pseudo)
    }
}
