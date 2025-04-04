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
    package func value(
        _ value: Value?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Value.attribute, value?.description)
    }
    
    /// Sets the value attribute with a string value
    @discardableResult
    @HTMLBuilder
    package func value(
        _ value: (some CustomStringConvertible)?
    ) -> some HTML {
        if let description = value?.description {
            self.value(Value(description))
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
        self.attribute(Value.attribute, value.map { Value.init($0).description })
    }
}
