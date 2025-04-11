//
//  BackgroundOrigin Tests.swift
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
    "BackgroundOrigin Tests",
    .snapshots(record: .failed)
)
struct BackgroundOriginTests {
    @Test("HTML element renders with background-origin border-box properly")
    func htmlElementWithBackgroundOriginBorderBoxRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.borderBox)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-origin-otfSh{background-origin:border-box}

                </style>
              </head>
              <body>
            <div class="background-origin-otfSh">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element renders with background-origin padding-box properly")
    func htmlElementWithBackgroundOriginPaddingBoxRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.paddingBox)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-origin-hWz2j2{background-origin:padding-box}

                </style>
              </head>
              <body>
            <div class="background-origin-hWz2j2">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element renders with background-origin content-box properly")
    func htmlElementWithBackgroundOriginContentBoxRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.contentBox)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-origin-OOyEn1{background-origin:content-box}

                </style>
              </head>
              <body>
            <div class="background-origin-OOyEn1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-origin with global value renders properly")
    func htmlBackgroundOriginWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-origin-trEDH1{background-origin:inherit}

                </style>
              </head>
              <body>
            <div class="background-origin-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-origin with media query renders properly")
    func htmlBackgroundOriginWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.contentBox, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media print{
              .background-origin-5DhbZ{background-origin:content-box}
            }

                </style>
              </head>
              <body>
            <div class="background-origin-5DhbZ">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-origin with pseudo-class renders properly")
    func htmlBackgroundOriginWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.contentBox, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-origin-h7scE1:hover{background-origin:content-box}

                </style>
              </head>
              <body>
            <div class="background-origin-h7scE1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-origin with prefix renders properly")
    func htmlBackgroundOriginWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundOrigin(.contentBox, pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            my-component .background-origin-e7c0Y2{background-origin:content-box}

                </style>
              </head>
              <body>
            <div class="background-origin-e7c0Y2">
            </div>
              </body>
            </html>
            """
        }
    }
}