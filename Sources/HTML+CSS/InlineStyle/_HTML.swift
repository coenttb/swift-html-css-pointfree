//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import Foundation
import PointFreeHTML
import CSSPropertyTypes

extension HTML {
    @discardableResult
    public func inlineStyle<PropertyElement: Property>(
        _ property: PropertyElement?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(PropertyElement.property, property?.description, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    public func style<PropertyElement: Property>(
        _ property: PropertyElement?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(property, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
