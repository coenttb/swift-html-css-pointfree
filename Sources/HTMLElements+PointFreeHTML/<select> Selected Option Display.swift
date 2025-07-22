//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Select {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .multiple(self.multiple)
            .name(self.name)
            .required(self.required)
            .size(self.size)
            .disabled(self.disabled)
            .form(self.form)
            .autofocus(self.autofocus)
    }
}
