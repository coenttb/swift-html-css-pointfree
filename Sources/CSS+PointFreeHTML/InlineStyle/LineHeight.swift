//
//  LineHeight.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func lineHeight(
        _ lineHeight: CSSPropertyTypes.LineHeight?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(lineHeight, media: media, pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func lineHeight<T: BinaryInteger>(
        _ lineHeight: T?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(lineHeight.map { LineHeight(integerLiteral: Int($0)) }, media: media, pre: pre, pseudo: pseudo)
    }

    @discardableResult
    public func lineHeight<T: BinaryFloatingPoint>(
        _ lineHeight: T?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(lineHeight.map { LineHeight(floatLiteral: Double($0)) }, media: media, pre: pre, pseudo: pseudo)
    }
}
