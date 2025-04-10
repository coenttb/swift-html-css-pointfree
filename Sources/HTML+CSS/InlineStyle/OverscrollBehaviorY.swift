//
//  OverscrollBehaviorY.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func overscrollBehaviorY(
        _ overscrollBehaviorY: CSSPropertyTypes.OverscrollBehaviorY?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(overscrollBehaviorY, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
