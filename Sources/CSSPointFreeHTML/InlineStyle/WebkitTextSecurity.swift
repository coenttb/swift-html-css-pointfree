//
//  WebkitTextSecurity.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func webkitTextSecurity(
        _ webkitTextSecurity: CSSPropertyTypes.WebkitTextSecurity?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(webkitTextSecurity, media: media, selector: selector, pseudo: pseudo)
    }
}
