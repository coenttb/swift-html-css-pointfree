/////
///// Label.swift
///// swift-html
/////
///// Represents the HTML label element for form controls.
/////
///// Created by Coen ten Thije Boonkkamp on 04/04/2025.
/////
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Label {
    public func callAsFunction(@HTMLBuilder _ content: () -> some HTML) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .for(self.for)
    }
}
