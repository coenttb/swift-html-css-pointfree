///
/// Nonce.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import Foundation
import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Sets the nonce attribute using a Nonce struct
    @discardableResult
    public func nonce(
        _ attribute: Nonce?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Nonce.attribute, attribute?.description)
    }
}

//extension HTML {
//    /// Sets the nonce attribute with a newly generated secure nonce
//    @discardableResult
//    public func nonce() -> _HTMLAttributes<Self> {
//        self.nonce(Nonce.generate())
//    }
//}
