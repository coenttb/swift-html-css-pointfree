//
//  FontVariantLigatures.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func fontVariantLigatures(
        _ fontVariantLigatures: CSSPropertyTypes.FontVariantLigatures?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(fontVariantLigatures, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
