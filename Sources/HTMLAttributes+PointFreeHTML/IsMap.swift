//
//  IsMap.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import PointFreeHTML

extension HTML {
    
    /// Sets the ismap attribute on an element
    @discardableResult
    package func isMap(
        _ value: Ismap?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Ismap.attribute, value?.description)
    }
}
