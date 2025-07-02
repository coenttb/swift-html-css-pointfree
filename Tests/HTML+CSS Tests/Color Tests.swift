//
//  Color Tests.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import Foundation
import Testing
import HTML_CSS
import PointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import DependenciesTestSupport
import InlineSnapshotTesting
import HTMLTestSupport

@Suite(
    "Color Tests",
    .snapshots(record: .failed)
)
struct ColorTests {
    @Test("Color initializes with standard color")
    func colorInitializesWithStandardColor() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"))
        #expect(color.light.description == "#FF0000")
    }
    
    @Test("Color initializes with light and dark colors")
    func colorInitializesWithLightAndDarkColors() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        #expect(color.light.description == "#FF0000")
        #expect(color.dark.description == "#00FF00")
    }
    
    @Test("Color falls back to darker version when dark is omitted")
    func colorFallsBackToDarker() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"))
        #expect(color.dark != color.light)
    }
    
    @Test("Color description includes media queries")
    func colorDescriptionIncludesMediaQueries() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let description = color.description
        #expect(description.contains("@media (prefers-color-scheme: light)"))
        #expect(description.contains("#FF0000"))
        #expect(description.contains("@media (prefers-color-scheme: dark)"))
        #expect(description.contains("#00FF00"))
    }
    
    @Test("Color description includes dark mode even when not explicitly provided")
    func colorDescriptionIncludesDarkModeWhenNotExplicit() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: nil)
        let description = color.description
        #expect(description.contains("@media (prefers-color-scheme: light)"))
        #expect(description.contains("#FF0000"))
        #expect(description.contains("@media (prefers-color-scheme: dark)"))
        // The dark mode color is automatically generated, so we just check it exists
        #expect(description.contains("rgb") || description.contains("#"))
    }
    
    @Test("Map transforms both light and dark colors")
    func mapTransformsBothColors() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let transformed = color.map { _ in .hex("0000FF") }
        #expect(transformed.light.description == "#0000FF")
        #expect(transformed.dark.description == "#0000FF")
    }
    
    @Test("FlatMap transforms colors more complexly")
    func flatMapTransformsColorsComplexly() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let transformed = color.flatMap { _ in
            CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("0000FF"), dark: .hex("FF00FF"))
        }
        #expect(transformed.light.description == "#0000FF")
        #expect(transformed.dark.description == "#FF00FF")
    }
    
    @Test("AdjustBrightness changes color brightness")
    func adjustBrightnessChangesColorBrightness() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let brightened = color.adjustBrightness(by: 0.2)
        #expect(brightened.light != color.light)
        #expect(brightened.dark != color.dark)
    }
    
    @Test("Darker makes colors darker")
    func darkerMakesColorsDarker() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let darkened = color.darker(by: 0.3)
        #expect(darkened.light != color.light)
        #expect(darkened.dark != color.dark)
    }
    
    @Test("Lighter makes colors lighter")
    func lighterMakesColorsLighter() {
        let color = CSSPropertyTypes.Color.WithDarkMode.Color(light: .hex("FF0000"), dark: .hex("00FF00"))
        let lightened = color.lighter(by: 0.3)
        #expect(lightened.light != color.light)
        #expect(lightened.dark != color.dark)
    }
    
    @Test("WithDarkMode global type works correctly")
    func withDarkModeGlobalTypeWorksCorrectly() {
        let global = CSSPropertyTypes.Color.WithDarkMode.initial
        #expect(global.description == "initial")
    }
    
    @Test("WithDarkMode enum description passes through correct values")
    func withDarkModeEnumDescriptionPassesValues() {
        let colorCase = CSSPropertyTypes.Color.WithDarkMode.color(
            .init(light: .hex("FF0000"), dark: .hex("00FF00"))
        )
        let globalCase = CSSPropertyTypes.Color.WithDarkMode.inherit
        
        #expect(colorCase.description.contains("@media"))
        #expect(colorCase.description.contains("#FF0000"))
        #expect(globalCase.description == "inherit")
    }
    
    @Test("HTML color method with pseudo-class parameter")
    func htmlColorMethodWithPseudoClassParameter() {

        let test = HTMLDocument {
            div
                .color(.hex("FF0000"), pseudo: .hover)
            
        }
        
        let html = String.init(bytes: test.render(), encoding: .utf8)!
        #expect(html.contains(":hover"))
        #expect(html.contains("color:#FF0000"))
        
        
    }
    
    @Test("Color adjustBrightness method works for color case")
    func ColorAdjustBrightnessForColorCase() {
        let color = CSSPropertyTypes.Color.color(.hex("FF0000"))
        let brightened = color.adjustBrightness(by: 0.2)
        
        #expect(brightened.description != color.description)
    }
    
    @Test("Color adjustBrightness method preserves global case")
    func ColorAdjustBrightnessPreservesGlobalCase() {
        let global = CSSPropertyTypes.Color.inherit
        let adjusted = global.adjustBrightness(by: 0.2)
        
        #expect(adjusted.description == global.description)
        #expect(adjusted.description == "inherit")
    }
    
    @Test("HTML element renders with named color properly")
    func htmlElementWithNamedColorRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.color(.red)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .color-dMYaj4{color:red}

                </style>
              </head>
              <body>
            <div class="color-dMYaj4">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML color with Color renders properly")
    func htmlColorMethodWithColorWorks() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div
                    .color(CSSPropertyTypes.Color.color(.hex("FF0000")))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .color-bQ3ZC1{color:#FF0000}

                </style>
              </head>
              <body>
            <div class="color-bQ3ZC1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element with light/dark colors renders properly")
    func htmlElementWithLightDarkColorsAppliesBoth() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div
                    .color(light: .hex("FF0000"), dark: .hex("00FF00"))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .color-bQ3ZC1{color:#FF0000}
            @media (prefers-color-scheme: dark), print{
              .color-Dh1qJ1{color:#00FF00}
            }

                </style>
              </head>
              <body>
            <div class="color-bQ3ZC1 color-Dh1qJ1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML color with media query renders properly")
    func htmlColorMethodWithMediaQueryParameter() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div
                    .color(.blue, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media print{
              .color-oD7XM1{color:blue}
            }

                </style>
              </head>
              <body>
            <div class="color-oD7XM1">
            </div>
              </body>
            </html>
            """
        }
    }
}
