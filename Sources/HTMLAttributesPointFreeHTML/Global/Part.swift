///
/// Part.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 02/04/2025.
///

import HTMLAttributeTypes
import PointFreeHTML

extension HTML {
  /// Sets the part attribute with a single part name
  @discardableResult
  public func part(
    _ partName: String
  ) -> _HTMLAttributes<Self> {
    self.attribute(Part.attribute, partName)
  }

  /// Sets the part attribute with multiple part names
  @discardableResult
  public func part(
    _ partNames: [String]
  ) -> _HTMLAttributes<Self> {
    self.attribute(Part.attribute, partNames.joined(separator: " "))
  }

  /// Sets the part attribute with multiple part names as variadic parameters
  @discardableResult
  public func part(
    _ partNames: String...
  ) -> _HTMLAttributes<Self> {
    self.part(partNames)
  }

  /// Sets the part attribute using a Part struct
  @discardableResult
  public func part(
    _ attribute: Part
  ) -> _HTMLAttributes<Self> {
    self.attribute(Part.attribute, attribute.description)
  }
}
