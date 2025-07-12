//
//  Color.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSSTypes
import Foundation
import PointFreeHTML

extension HTML {
    @_disfavoredOverload
    @discardableResult
    public func color(
        _ color: CSSPropertyTypes.Color?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(color, media: media, pre: pre, pseudo: pseudo)
    }
}

extension HTML {
    @discardableResult
    @_disfavoredOverload
    @HTMLBuilder
    public func color(
        _ color: CSSPropertyTypes.Color.WithDarkMode?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> some HTML {
        switch color {
        case .global:
            self.inlineStyle(color, media: media, pre: pre, pseudo: pseudo)
        case let .darkMode(color):
            self.color(light: color.light, dark: color.dark, media: media, pre: pre, pseudo: pseudo)
        case .none:
            self
        }
    }
}

extension CSSPropertyTypes.Color.WithDarkMode: CSSPropertyTypes.Property {
    public static var property: String { CSSPropertyTypes.Color.property }
}

extension HTML {
    @discardableResult
    public func color(
        light: CSSTypeTypes.Color,
        dark: CSSTypeTypes.Color?,
        media: CSSAtRuleTypes.Media? = nil,
        pre: String? = nil,
        pseudo: Pseudo? = nil
    ) -> some HTML {
        self
            .inlineStyle("color", light.description, media: media, pre: pre, pseudo: pseudo)
            .inlineStyle("color", dark?.description, media: .prefersColorScheme(.dark), pre: pre, pseudo: pseudo)
    }
}

extension CSSPropertyTypes.Color {
    public enum WithDarkMode: Sendable, Hashable, GlobalConvertible, ColorConvertible {
        
        case darkMode(CSSPropertyTypes.Color.WithDarkMode.Color)
        case global(CSSTypeTypes.Global)
        
        public struct Color: Sendable, Hashable {
            public let light: CSSTypeTypes.Color
            public let dark: CSSTypeTypes.Color
            
            public init(light: CSSTypeTypes.Color, dark: CSSTypeTypes.Color? = nil) {
                self.light = light
                if let dark = dark {
                    self.dark = dark
                } else {
                    self.dark = light.darker()
                }
            }
        }
        
        public static func color(_ color: CSSTypeTypes.Color) -> CSSPropertyTypes.Color.WithDarkMode {
            return .init(color)
        }
        
        public static func color(_ color: CSSPropertyTypes.Color.WithDarkMode.Color) -> Self {
            return .darkMode(color)
        }
    }
}

extension CSSPropertyTypes.Color.WithDarkMode {
    public init(_ color: CSSPropertyTypes.Color){
        switch color {
        case .global(let global): self = .global(global)
        case .color(let color): self = .init(color)
        }
    }
}

extension CSSPropertyTypes.Color.WithDarkMode {
    public init(_ color: CSSTypeTypes.Color){
        self = .darkMode(.init(light: color))
    }
}

extension CSSPropertyTypes.Color.WithDarkMode.Color: CustomStringConvertible {
    public var description: String {
        let attribute = CSSPropertyTypes.Color.property
        return "@media (prefers-color-scheme: light) { \(attribute):\(light) } @media (prefers-color-scheme: dark) { \(attribute):\(dark) }"
    }
}

extension CSSPropertyTypes.Color.WithDarkMode: CustomStringConvertible {
    public var description: String {
        switch self {
        case .darkMode(let color): return color.description
        case .global(let global): return global.description
        }
    }
}

extension CSSPropertyTypes.Color.WithDarkMode.Color {
    public func map(_ transform: (CSSTypeTypes.Color) -> CSSTypeTypes.Color) -> Self {
        .init(
            light: transform(light),
            dark: transform(dark)
        )
    }
    
    public func flatMap(_ transform: (CSSTypeTypes.Color) -> CSSPropertyTypes.Color.WithDarkMode.Color) -> Self {
        let lightTransformed = transform(light)
        let darkTransformed = transform(dark)
        
        return .init(
            light: lightTransformed.light,
            dark: darkTransformed.dark
        )
    }
}

extension CSSPropertyTypes.Color {
    public func adjustBrightness(by percentage: Double) -> Self {
        switch self {
        case .color(let color): .color(color.adjustBrightness(by: percentage))
        case .global(let global): .global(global)
        }
    }
}

extension CSSPropertyTypes.Color.WithDarkMode.Color {
    public func adjustBrightness(by percentage: Double) -> Self {
        self.map { $0.adjustBrightness(by: percentage) }
    }

    public func darker(by percentage: Double = 0.2) -> Self {
        self.map { $0.darker(by: percentage) }
    }
    
    public func lighter(by percentage: Double = 0.2) -> Self {
        self.map { $0.lighter(by: percentage) }
    }
}
