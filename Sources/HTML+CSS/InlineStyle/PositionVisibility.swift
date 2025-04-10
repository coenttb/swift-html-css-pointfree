//
//  PositionVisibility.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func positionVisibility(
        _ positionVisibility: CSSPropertyTypes.PositionVisibility?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(positionVisibility, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
