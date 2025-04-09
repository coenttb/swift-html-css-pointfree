/////
///// Label.swift
///// swift-html
/////
///// Represents the HTML label element for form controls.
/////
///// Created by Claude on 04/04/2025.
/////
//

import Foundation
import HTML_Attributes_PointFreeHTML
import HTML_Elements

extension Label {
    public func callAsFunction(_ content: () -> some HTML) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .for(self.for)
    }
}

