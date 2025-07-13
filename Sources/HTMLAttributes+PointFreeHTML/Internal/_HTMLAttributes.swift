//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation
import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
    @HTMLBuilder
    package func attribute(
        _ value: String,
        _ condition: @autoclosure () -> Bool?
    ) -> some HTML {
        let conditionResult = condition()
        if conditionResult == true {
            self.attribute(value, "")
        } else {
            self.attribute("", String?.none)
        }
    }

    @HTMLBuilder
    package func attribute<Attribute: BooleanAttribute>(
        boolean value: Attribute?,
    ) -> some HTML {
        self.attribute(Attribute.attribute, value == true)
    }
}

extension _HTMLAttributes {
    package func attribute(
        _ name: String,
        _ value: (some CustomStringConvertible)? = ""
    ) -> _HTMLAttributes<Content> {
        self.attribute(name, value?.description)
    }
}
