///
/// Style.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the style attribute with CSS declarations as a string
    @discardableResult
    public func style(
        _ css: String
    ) -> _HTMLAttributes<Self> {
        self.attribute(Style.attribute, css)
    }
    
    /// Sets the style attribute with CSS declarations as key-value pairs
    @discardableResult
    public func style(
        _ declarations: [String: String]
    ) -> _HTMLAttributes<Self> {
        let formattedDeclarations = declarations.map { key, value in
            "\(key): \(value)"
        }.joined(separator: "; ")
        
        return self.attribute(Style.attribute, formattedDeclarations)
    }
    
    /// Sets the style attribute using a Style struct
    @discardableResult
    public func style(
        _ attribute: Style
    ) -> _HTMLAttributes<Self> {
        self.attribute(Style.attribute, attribute.description)
    }
}
