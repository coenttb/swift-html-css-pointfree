//
//  TextUnderlineOffset.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func textUnderlineOffset(
        _ textUnderlineOffset: CSSPropertyTypes.TextUnderlineOffset?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(textUnderlineOffset, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
