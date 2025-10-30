//
//  FormTarget.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {

  /// Sets the formtarget attribute on an element
  @discardableResult
  package func formTarget(
    _ value: FormTarget?
  ) -> _HTMLAttributes<Self> {
    self.attribute(FormTarget.attribute, value?.description)
  }
}
