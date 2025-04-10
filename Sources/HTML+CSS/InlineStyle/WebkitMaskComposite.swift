//
//  WebkitMaskComposite.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func webkitMaskComposite(
        _ webkitMaskComposite: CSSPropertyTypes.WebkitMaskComposite?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(webkitMaskComposite, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
