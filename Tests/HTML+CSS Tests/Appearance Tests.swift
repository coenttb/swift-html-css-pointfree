//
//  Appearance Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
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
    "Appearance Tests",
    .snapshots(record: .failed)
)
struct AppearanceTests {
    @Test("HTML element renders with appearance properly")
    func htmlElementWithAppearanceRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.appearance(.none)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>

                </style>
              </head>
              <body>
            <div>
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
            <html lang="en">
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
            <html lang="en">
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
                div.appearance(.none, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>

                </style>
              </head>
              <body>
            <div>
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
                div.appearance(.none, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>

                </style>
              </head>
              <body>
            <div>
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
                div.appearance(.none, pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>

                </style>
              </head>
              <body>
            <div>
            </div>
              </body>
            </html>
            """
        }
    }
}