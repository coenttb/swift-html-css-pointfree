//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import PointFreeHTML

extension HTML {
    @discardableResult
    public func inlineStyle<PropertyElement: CSSPropertyTypes.Property>(
        _ property: PropertyElement?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(PropertyElement.property, property?.description, media: media.map(PointFreeHTML.AtRule.Media.init), selector: selector, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    @_disfavoredOverload
    public func inlineStyle(
        _ property: String,
        _ value: String?,
        media: CSSAtRuleTypes.Media? = nil,
        selector: Selector? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(property, value, media: media.map(PointFreeHTML.AtRule.Media.init), selector: selector, pseudo: pseudo)
    }
}

extension PointFreeHTML.AtRule.Media {
    package init(_ media: CSSAtRuleTypes.Media) {
        self = .init(rawValue: media.rawValue)
    }
}
