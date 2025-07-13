//
//  Imagesizes.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

    /// Sets the sizes attribute on an image element
    @discardableResult
    package func sizes(
        _ value: ImageSizes?
    ) -> _HTMLAttributes<Self> {
        self.attribute(ImageSizes.attribute, value?.description)
    }
}
