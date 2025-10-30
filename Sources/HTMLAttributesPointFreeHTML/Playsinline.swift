//
//  Playsinline.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

  /// Sets the playsinline attribute on an element
  @discardableResult
  package func playsinline(
    _ value: HTMLAttributeTypes.Playsinline?
  ) -> _HTMLAttributes<Self> {
    self.attribute(HTMLAttributeTypes.Playsinline.attribute, value?.description)
  }
}
