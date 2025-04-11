//
//  DisableRemotePlayback.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    
    /// Sets the disableremoteplayback attribute on an element
    @discardableResult
    package func disableRemotePlayback(
        _ value: DisableRemotePlayback?
    ) -> _HTMLAttributes<Self> {
        self.attribute(DisableRemotePlayback.attribute, value?.description)
    }
}
