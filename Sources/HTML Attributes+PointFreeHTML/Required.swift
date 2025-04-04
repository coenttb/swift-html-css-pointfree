///
/// Required.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Adds the required attribute to the element
    package var required: _HTMLAttributes<Self> {
        self.attribute(Required.attribute)
    }
    
    /// Conditionally adds the required attribute to the element
    @HTMLBuilder
    package func required(_ value: Required?) -> some HTML {
        if value == true {
            self.attribute(Required.attribute)
        } else {
            self
        }
    }
    
    /// Adds the required attribute to the element
    @HTMLBuilder
    package func required(_ value: Bool?) -> some HTML {
        if value == true {
            self.attribute(Required.attribute)
        } else {
            self
        }
    }
}
