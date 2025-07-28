//
//  ViewTransitionName.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func viewTransitionName(
        _ viewTransitionName: CSSPropertyTypes.ViewTransitionName?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(viewTransitionName, media: media, selector: selector, pseudo: pseudo)
    }
}
