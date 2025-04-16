//
//  Border.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    @_disfavoredOverload
    public func border(
        _ border: CSSPropertyTypes.Border?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(border, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
