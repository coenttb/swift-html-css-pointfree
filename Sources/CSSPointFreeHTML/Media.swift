//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 17/09/2024.
//

import CSSAtRuleTypes
import PointFreeHTML

extension CSSAtRuleTypes.Media {
  package static let desktop = Self(rawValue: "@media only screen and (min-width: 832px)")
  package static let mobile = Self(rawValue: "@media only screen and (max-width: 831px)")
  package static let tablet = Self(
    rawValue: "@media only screen and (min-width: 768px) and (max-width: 1024px)"
  )
  package static let landscape = Self(rawValue: "@media (orientation: landscape)")
  package static let portrait = Self(rawValue: "@media (orientation: portrait)")
  package static let retina = Self(
    rawValue: "@media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi)"
  )
  package static let smallMobile = Self(rawValue: "@media only screen and (max-width: 320px)")
  package static let largeMobile = Self(
    rawValue: "@media only screen and (min-width: 321px) and (max-width: 767px)"
  )
  package static let largeDesktop = Self(rawValue: "@media only screen and (min-width: 1200px)")
  package static let hover = Self(rawValue: "@media (hover: hover)")
  package static let reducedMotion = Self(rawValue: "@media (prefers-reduced-motion: reduce)")
}

extension HTMLInlineStyle {
  @_disfavoredOverload
  public func inlineStyle(
    _ property: String,
    _ value: String?,
    media: CSSAtRuleTypes.Media? = nil,
    selector: PointFreeHTML.Selector? = nil,
    pseudo: PointFreeHTML.Pseudo? = nil
  ) -> HTMLInlineStyle {
    return self.inlineStyle(
      property,
      value,
      atRule: media.map(\.rawValue).map(PointFreeHTML.AtRule.Media.init(rawValue:)),
      selector: selector,
      pseudo: pseudo
    )
  }
}
