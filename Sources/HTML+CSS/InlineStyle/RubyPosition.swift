//
//  RubyPosition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSPropertyTypes
import Foundation
import PointFreeHTML

extension HTML {
    @discardableResult
    public func rubyPosition(
        _ rubyPosition: CSSPropertyTypes.RubyPosition?,
        media mediaQuery: MediaQuery? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(rubyPosition, media: mediaQuery, pre: pre, pseudo: pseudo)
    }
}
