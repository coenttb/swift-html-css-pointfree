//
//  TextCombineUpright.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func textCombineUpright(
        _ textCombineUpright: CSSPropertyTypes.TextCombineUpright?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(textCombineUpright, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
