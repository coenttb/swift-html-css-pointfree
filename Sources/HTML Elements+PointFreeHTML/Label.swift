///
/// Label.swift
/// swift-html
///
/// Represents the HTML label element for form controls.
///
/// Created by Claude on 04/04/2025.
///

import Foundation
import HTML_Attributes_HTML
import HTML_Elements

extension Label: PointFreeHTML.HTML where HTML: PointFreeHTML.HTML {
    /// Renders the Label element as HTML.
    ///
    /// This implementation creates an HTML `<label>` element with the appropriate attributes
    /// and content. If the `htmlFor` attribute is specified, it will create an explicit
    /// association with the form control having that ID.
    ///
    /// The rendering process:
    /// 1. Creates a base label element
    /// 2. Adds the 'for' attribute if specified
    /// 3. Adds the label content which may include text and/or nested controls
    public var body: some PointFreeHTML.HTML {
        let label = PointFreeHTML.label {
            AnyHTML(self.content())
        }
        
        label
            .for(self.for)
    }
    
    @_disfavoredOverload
    public init(
        for: For? = nil,
        @HTMLBuilder content: @escaping () -> HTML
    ) {
        self = .init(
            for: `for`,
            content: content
        )
    }
}
