//
//  Appearance Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS_PointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import PointFreeHTML
import PointFreeHTMLTestSupport
import Testing

@Suite(
    "Appearance Tests",
    .snapshots(record: nil)
)
struct AppearanceTests {
    @Test("HTML element renders with appearance properly")
    func htmlElementWithAppearanceRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(Appearance.none)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .appearance-Wl0y44{appearance:none}

                </style>
              </head>
              <body>
            <div class="appearance-Wl0y44">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with different appearance value properly")
    func htmlElementWithDifferentAppearanceRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(.auto)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .appearance-u7yQf2{appearance:auto}

                </style>
              </head>
              <body>
            <div class="appearance-u7yQf2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML appearance with global value renders properly")
    func htmlAppearanceWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .appearance-trEDH1{appearance:inherit}

                </style>
              </head>
              <body>
            <div class="appearance-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML appearance with media query renders properly")
    func htmlAppearanceWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(Appearance.none, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            @media print{
              .appearance-D5ekn{appearance:none}
            }

                </style>
              </head>
              <body>
            <div class="appearance-D5ekn">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML appearance with pseudo-class renders properly")
    func htmlAppearanceWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(Appearance.none, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .appearance-8r95N:hover{appearance:none}

                </style>
              </head>
              <body>
            <div class="appearance-8r95N">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML appearance with prefix renders properly")
    func htmlAppearanceWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(Appearance.none, selector: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            my-component .appearance-V6DAJ3{appearance:none}

                </style>
              </head>
              <body>
            <div class="appearance-V6DAJ3">
            </div>
              </body>
            </html>
            """
        }
    }
}
