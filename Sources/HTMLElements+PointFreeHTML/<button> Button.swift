//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Button {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some PointFreeHTML.HTML
    ) -> some PointFreeHTML.HTML {
        HTMLElement(tag: Self.tag) { content() }
            .type(self.type)
            .disabled(self.disabled)
            .form(self.form)
            .name(self.name)
            .value(self.value)
            .autofocus(self.autofocus)
            .formAction(self.formaction)
            .formEncType(self.formenctype)
            .formMethod(self.formmethod)
            .formNovalidate(self.formnovalidate)
            .formTarget(self.formtarget)
            .popovertarget(self.popovertarget)
            .popovertargetaction(self.popovertargetaction)
    }
}
