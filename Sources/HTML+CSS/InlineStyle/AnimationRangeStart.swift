//
//  AnimationRangeStart.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func animationRangeStart(
        _ animationRangeStart: CSSPropertyTypes.AnimationRangeStart?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(animationRangeStart, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
