//
//  DisablePictureInPicture.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the disablepictureinpicture attribute on an element
    @discardableResult
    package func disablePictureInPicture(
        _ value: DisablePictureInPicture?
    ) -> _HTMLAttributes<Self> {
        self.attribute(DisablePictureInPicture.attribute, value?.description)
    }
}
