///
/// Value.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 04/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    
    /// Sets the value attribute on an element
    @discardableResult
    package func value<Element: CustomStringConvertible>(
        _ value: Value<Element>?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Value<Element>.attribute, value?.description)
    }
    
    /// Sets the value attribute with a string value
    @discardableResult
    @HTMLBuilder
    package func value(
        _ value: (some CustomStringConvertible)?
    ) -> some HTML {
        if let description = value?.description {
            self.value(Value(value: description))
        } else {
            self
        }
    }
    
    /// Sets the value attribute with a string value
    @discardableResult
    @HTMLBuilder
    package func value(
        _ value: String?
    ) -> some HTML {
        self.attribute(Value<String>.attribute, value.map { Value.init(value: $0).description })
    }
}
