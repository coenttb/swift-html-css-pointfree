//
//  AnimationFillMode.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func animationFillMode(
        _ animationFillMode: CSSPropertyTypes.AnimationFillMode?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(animationFillMode, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
