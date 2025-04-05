//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation
import HTML_Attributes_PointFreeHTML
import HTML_Elements

extension Input: @retroactive HTML {
    /// Renders the Input element as HTML.
    ///
    /// This implementation creates an HTML `<input>` element with the appropriate attributes
    /// based on the input type. Each input variant adds its specific attributes to the base input.
    ///
    /// The rendering process:
    /// 1. Creates a base input element with the common attributes (name, disabled, type)
    /// 2. Switches on the input type to add type-specific attributes
    /// 3. Returns the fully configured input element
    public var body: some HTML {
        let input = PointFreeHTML.input()
            .attribute(Name.attribute, name)
            .disabled(self.disabled)
            .attribute("type", self.type.label)
        
        switch type {
        case .button(let button):
            input
                .value(button.value)
        case .checkbox(let checkbox):
            input
                .value(checkbox.value)
                .checked(checkbox.checked)
                .required(checkbox.required)
        case .color(let color):
            input
                .value(color.value)
        case .date(let date):
            input
                .value(date.value)
                .min(date.min)
                .max(date.max)
                .step(date.step)
                .required(date.required)
        case .datetimeLocal(let datetimeLocal):
            input
                .value(datetimeLocal.value)
                .min(datetimeLocal.min)
                .max(datetimeLocal.max)
                .step(datetimeLocal.step)
                .required(datetimeLocal.required)
        case .email(let email):
            input
                .value(email.value)
                .maxlength(email.maxlength)
                .minlength(email.minlength)
                .multiple(email.multiple)
                .required(email.required)
                .pattern(email.pattern)
                .placeholder(email.placeholder)
                .readonly(email.readonly == true)
                .size(email.size)
        case .file(let file):
            input
                .accept(file.accept)
                .capture(file.capture)
                .multiple(file.multiple)
                .required(file.required)
        case .hidden(let hidden):
            input
                .value(hidden.value)
        case .image(let image):
            input
                .alt(image.alt)
                .height(image.height)
                .width(image.width)
                .required(image.required)
                .src(image.src)
                .attribute("formaction", image.form.action)
                .attribute("formenctype", image.form.enctype)
                .attribute("formmethod", image.form.method)
                .attribute("formnovalidate", image.form.novalidate == true)
                .attribute("formtarget", image.form.target)
        case .month(let month):
            input
                .value(month.value)
                .list(month.list)
                .min(month.min)
                .max(month.max)
                .readonly(month.readonly)
                .step(month.step)
                .required(month.required)
        case .number(let number):
            input
                .value(number.value)
                .min(number.min)
                .max(number.max)
                .placeholder(number.placeholder)
                .readonly(number.readonly)
                .step(number.step)
                .required(number.required)
        case .password(let password):
            input
                .value(password.value)
                .maxlength(password.maxlength)
                .minlength(password.minlength)
                .pattern(password.pattern)
                .placeholder(password.placeholder)
                .readonly(password.readonly)
                .size(password.size)
                .autocomplete(password.autocomplete)
                .required(password.required)
        case .radio(let radio):
            input
                .value(radio.value)
                .checked(radio.checked)
                .required(radio.required)
        case .range(let range):
            input
                .value(range.value)
                .min(range.min)
                .max(range.max)
                .step(range.step)
                .list(range.list)
        case .reset(let reset):
            input
                .value(reset.value)
                .required(reset.required)
        case .search(let search):
            input
                .value(search.value)
                .list(search.list)
                .maxlength(search.maxlength)
                .minlength(search.minlength)
                .pattern(search.pattern)
                .placeholder(search.placeholder)
                .readonly(search.readonly)
                .size(search.size)
                .spellcheck(search.spellcheck)
                .required(search.required)
        case .submit(let submit):
            input
                .attribute("formaction", submit.formaction)
                .attribute("formenctype", submit.formenctype)
                .attribute("formmethod", submit.formmethod)
                .attribute("formnovalidate", submit.formnovalidate == true)
                .attribute("formtarget", submit.formtarget)
                .value(submit.value)
                .required(submit.required)
        case .tel(let tel):
            input
                .value(tel.value)
                .list(tel.list)
                .maxlength(tel.maxlength)
                .minlength(tel.minlength)
                .pattern(tel.pattern)
                .placeholder(tel.placeholder)
                .readonly(tel.readonly)
                .size(tel.size)
                .required(tel.required)
        case .text(let text):
            input
                .value(text.value)
                .list(text.list)
                .maxlength(text.maxlength)
                .minlength(text.minlength)
                .pattern(text.pattern)
                .placeholder(text.placeholder)
                .readonly(text.readonly)
                .size(text.size)
                .spellcheck(text.spellcheck)
                .required(text.required)
        case .time(let time):
            input
                .value(time.value)
                .list(time.list)
                .min(time.min)
                .max(time.max)
                .readonly(time.readonly)
                .step(time.step)
                .required(time.required)
        case .url(let url):
            input
                .value(url.value)
                .list(url.list)
                .maxlength(url.maxlength)
                .minlength(url.minlength)
                .pattern(url.pattern)
                .placeholder(url.placeholder)
                .readonly(url.readonly)
                .size(url.size)
                .spellcheck(url.spellcheck)
                .required(url.required)
        case .week(let week):
            input
                .value(week.value)
                .list(week.list)
                .min(week.min)
                .max(week.max)
                .readonly(week.readonly)
                .step(week.step)
                .required(week.required)
        case .datetime:
            input
        }
    }
}
