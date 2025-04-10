////
////  File.swift
////  swift-html
////
////  Created by Coen ten Thije Boonkkamp on 04/04/2025.
////
//
//import Foundation
//import HTMLAttributes_PointFreeHTML
//import HTMLElementTypes
//
//extension HTML_Elements.Form: @retroactive PointFreeHTML.HTML where HTML: PointFreeHTML.HTML {
//    /// Renders the Form element as HTML.
//    ///
//    /// This implementation creates an HTML `<form>` element with the configured attributes
//    /// and content. The form will include all non-nil attributes and the content provided
//    /// in the initializer.
//    ///
//    /// The rendering process:
//    /// 1. Creates a base form element with the content
//    /// 2. Adds all specified attributes (action, method, enctype, etc.)
//    /// 3. Returns the fully configured form element
//    public var body: some PointFreeHTML.HTML {
//        let form = PointFreeHTML.form {
//            AnyHTML(self.content())
//        }
//        
//        form
//            .accept(self.accept)
//            .attribute("accept-charset", self.acceptCharset)
//            .autocapitalize(self.autocapitalize)
//            .autocomplete(self.autocomplete)
//            .name(self.name)
//            .rel(self.rel)
//            .action(self.action)
//            .enctype(self.enctype)
//            .method(self.method)
//            .novalidate(self.novalidate)
//            .target(form: self.target)
//    }
//    
//    @_disfavoredOverload
//    public init(
//        autocapitalize: Autocapitalize? = nil,
//        autocomplete: Autocomplete? = nil,
//        name: Name? = nil,
//        rel: Rel? = nil,
//        action: HTMLAttributeTypes.Action? = nil,
//        enctype: HTMLAttributeTypes.Enctype? = nil,
//        method: HTMLAttributeTypes.Method? = nil,
//        novalidate: HTMLAttributeTypes.Novalidate? = nil,
//        target: HTMLAttributeTypes.Form.Target? = nil,
//        @HTMLBuilder content: @escaping () -> HTML
//    ) {
//        self = .init(
//            autocapitalize: autocapitalize,
//            autocomplete: autocomplete,
//            name: name,
//            rel: rel,
//            action: action,
//            enctype: enctype,
//            method: method,
//            novalidate: novalidate,
//            target: target
//        ) {
//            content()
//        }
//    }
//}
