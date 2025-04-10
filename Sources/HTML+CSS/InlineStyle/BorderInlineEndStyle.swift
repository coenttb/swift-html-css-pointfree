//
//  BorderInlineEndStyle.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func borderInlineEndStyle(
        _ borderInlineEndStyle: CSSPropertyTypes.BorderInlineEndStyle?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(borderInlineEndStyle, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
