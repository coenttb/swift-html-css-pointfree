//
//  ImageSrcSet.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the srcset attribute on an image element
    @discardableResult
    package func srcset(
        _ value: ImageSrcSet?
    ) -> _HTMLAttributes<Self> {
        self.attribute(ImageSrcSet.attribute, value?.description)
    }
}
