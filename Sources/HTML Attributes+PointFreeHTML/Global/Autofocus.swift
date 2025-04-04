///
/// Autofocus.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTML_Attributes

extension HTML {
    public var autofocus: _HTMLAttributes<Self> {
        self.attribute(Autofocus.attribute)
    }
}

