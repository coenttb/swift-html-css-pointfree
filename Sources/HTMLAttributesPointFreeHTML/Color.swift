//
//  Color.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

  /// Sets the color attribute on an element
  @discardableResult
  package func color(
    _ value: HTMLAttributeTypes.Color?
  ) -> _HTMLAttributes<Self> {
    self.attribute(HTMLAttributeTypes.Color.attribute, value?.description)
  }
}
