//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import Foundation
import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension textarea {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
            .autocapitalize(self.autocapitalize)
            .autocomplete(self.autocomplete)
            .autocorrect(self.autocorrect)
            .autofocus(self.autofocus)
            .cols(self.cols)
            .dirname(self.dirname)
            .disabled(self.disabled)
            .form(self.form)
            .maxlength(self.maxlength)
            .minlength(self.minlength)
            .name(self.name)
            .placeholder(self.placeholder)
            .readonly(self.readonly)
            .required(self.required)
            .rows(self.rows)
            .spellcheck(self.spellcheck)
            .wrap(self.wrap)
    }
}
