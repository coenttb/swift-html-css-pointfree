//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    /// Sets the step attribute on an element
    @discardableResult
    package func src(
        _ value: Src?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Src.attribute, value?.description)
    }
}
