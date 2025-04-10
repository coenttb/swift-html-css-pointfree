//
//  ObjectForm.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the form attribute on an object element
    @discardableResult
    package func form(
        _ value: ObjectForm?
    ) -> _HTMLAttributes<Self> {
        self.attribute(ObjectForm.attribute, value?.description)
    }
}
