//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import Foundation
import PointFreeHTML
import CSSTypes

//extension HTML {
//    @discardableResult
//    public func inlineStyle<PropertyElement: Property>(
//        _ property: PropertyElement?,
//        media: CSSAtRuleTypes.Media? = nil,
//        pre: String? = nil,
//        pseudo: Pseudo? = nil
//    ) -> HTMLInlineStyle<Self> {
//        self.inlineStyle(PropertyElement.property, property?.description, media: media, pre: pre, pseudo: pseudo)
//    }
//}
//
//extension HTML {
//    @discardableResult
//    public func style<PropertyElement: Property>(
//        _ property: PropertyElement?,
//        media: CSSAtRuleTypes.Media? = nil,
//        pre: String? = nil,
//        pseudo: Pseudo? = nil
//    ) -> HTMLInlineStyle<Self> {
//        self.inlineStyle(property, media: media, pre: pre, pseudo: pseudo)
//    }
//}


extension HTML {
    @discardableResult
    public func inlineStyle<PropertyElement: CSSPropertyTypes.Property>(
        _ property: PropertyElement?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(PropertyElement.property, property?.description, media: media.map(MediaQuery.init), pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    package func inlineStyle(
        _ property: String,
        _ value: String?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(property, value, media: media.map(MediaQuery.init), pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func style<PropertyElement: CSSPropertyTypes.Property>(
        _ property: PropertyElement?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(property, media: media, pre: pre, pseudo: pseudo)
    }
}

extension MediaQuery {
    public init(_ media: CSSAtRuleTypes.Media){
        self = .init(rawValue: media.rawValue)
    }
}
