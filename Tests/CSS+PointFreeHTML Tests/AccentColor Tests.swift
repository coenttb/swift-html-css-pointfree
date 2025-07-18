//
//  AccentColor Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS_PointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import Foundation
import PointFreeHtmlTestSupport
import PointFreeHTML
import Testing

@Suite(
    "AccentColor Tests",
    .snapshots(record: nil)
)
struct AccentColorTests {
    @Test("HTML element renders with accent-color properly")
    func htmlElementWithAccentColorRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.color(.red))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .accent-color-dMYaj4{accent-color:red}

                </style>
              </head>
              <body>
            <div class="accent-color-dMYaj4">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with accent-color using hex color properly")
    func htmlElementWithAccentColorHexRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.color(.hex("FF0000")))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .accent-color-bQ3ZC1{accent-color:#FF0000}

                </style>
              </head>
              <body>
            <div class="accent-color-bQ3ZC1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML accent-color with global value renders properly")
    func htmlAccentColorWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .accent-color-trEDH1{accent-color:inherit}

                </style>
              </head>
              <body>
            <div class="accent-color-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML accent-color with media query renders properly")
    func htmlAccentColorWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.color(.hex("FF0000")), media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media print{
              .accent-color-SXYRf2{accent-color:#FF0000}
            }

                </style>
              </head>
              <body>
            <div class="accent-color-SXYRf2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML accent-color with pseudo-class renders properly")
    func htmlAccentColorWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.color(.hex("FF0000")), pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .accent-color-egMjx3:hover{accent-color:#FF0000}

                </style>
              </head>
              <body>
            <div class="accent-color-egMjx3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML accent-color with prefix renders properly")
    func htmlAccentColorWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.accentColor(.color(.hex("FF0000")), pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            my-component .accent-color-XyDYD1{accent-color:#FF0000}

                </style>
              </head>
              <body>
            <div class="accent-color-XyDYD1">
            </div>
              </body>
            </html>
            """
        }
    }
}
