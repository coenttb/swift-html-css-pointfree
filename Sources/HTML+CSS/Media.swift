//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 17/09/2024.
//

import Foundation
import PointFreeHTML
import CSSAtRuleTypes

extension CSSAtRuleTypes.Media {
    public static let desktop = Self(rawValue: "only screen and (min-width: 832px)")
    public static let mobile = Self(rawValue: "only screen and (max-width: 831px)")
    public static let tablet = Self(rawValue: "only screen and (min-width: 768px) and (max-width: 1024px)")
    public static let landscape = Self(rawValue: "(orientation: landscape)")
    public static let portrait = Self(rawValue: "(orientation: portrait)")
    public static let retina = Self(rawValue: "(-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi)")
    public static let smallMobile = Self(rawValue: "only screen and (max-width: 320px)")
    public static let largeMobile = Self(rawValue: "only screen and (min-width: 321px) and (max-width: 767px)")
    public static let largeDesktop = Self(rawValue: "only screen and (min-width: 1200px)")
    public static let hover = Self(rawValue: "(hover: hover)")
    public static let reducedMotion = Self(rawValue: "(prefers-reduced-motion: reduce)")
}

extension HTMLInlineStyle {
    @_disfavoredOverload
    public func inlineStyle(
        _ property: String,
        _ value: String?,
        media mediaQuery: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle {
        self.inlineStyle(
            property,
            value,
            media: mediaQuery.map(\.rawValue).map(MediaQuery.init(rawValue:)),
            pre: pre,
            pseudo: pseudo
        )
    }
}
