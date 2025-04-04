///
/// Translate.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the translate attribute to enable or disable translation
    @discardableResult
    public func translate(
        _ value: Bool
    ) -> _HTMLAttributes<Self> {
        self.attribute(Translate.attribute, value ? "yes" : "no")
    }
    
    /// Sets the translate attribute using a Translate enum value
    @discardableResult
    public func translate(
        _ attribute: Translate
    ) -> _HTMLAttributes<Self> {
        self.attribute(Translate.attribute, attribute.description)
    }
    
    /// Explicitly enables translation for this element
    @discardableResult
    public func allowTranslation() -> _HTMLAttributes<Self> {
        self.translate(Translate.yes)
    }
    
    /// Explicitly disables translation for this element
    @discardableResult
    public func preventTranslation() -> _HTMLAttributes<Self> {
        self.translate(Translate.no)
    }
}
