//
//  BackgroundBlendMode Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import Foundation
import Testing
import CSS_PointFreeHTML
import PointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import DependenciesTestSupport
import InlineSnapshotTesting
import HTMLTestSupport

@Suite(
    "BackgroundBlendMode Tests",
    .snapshots(record: nil)
)
struct BackgroundBlendModeTests {
    @Test("HTML element renders with background-blend-mode normal properly")
    func htmlElementWithBackgroundBlendModeNormalRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.normal)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-evfWi1{background-blend-mode:normal}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-evfWi1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element renders with background-blend-mode multiply properly")
    func htmlElementWithBackgroundBlendModeMultiplyRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.multiply)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-gumfc1{background-blend-mode:multiply}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-gumfc1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element renders with background-blend-mode screen properly")
    func htmlElementWithBackgroundBlendModeScreenRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.screen)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-a7c473{background-blend-mode:screen}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-a7c473">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML element renders with background-blend-mode overlay properly")
    func htmlElementWithBackgroundBlendModeOverlayRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.overlay)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-UX3lO1{background-blend-mode:overlay}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-UX3lO1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-blend-mode with global value renders properly")
    func htmlBackgroundBlendModeWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-trEDH1{background-blend-mode:inherit}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-blend-mode with media query renders properly")
    func htmlBackgroundBlendModeWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.multiply, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media print{
              .background-blend-mode-B2231{background-blend-mode:multiply}
            }

                </style>
              </head>
              <body>
            <div class="background-blend-mode-B2231">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-blend-mode with pseudo-class renders properly")
    func htmlBackgroundBlendModeWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.multiply, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-blend-mode-kQHf41:hover{background-blend-mode:multiply}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-kQHf41">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-blend-mode with prefix renders properly")
    func htmlBackgroundBlendModeWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundBlendMode(.multiply, pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            my-component .background-blend-mode-QWNBt2{background-blend-mode:multiply}

                </style>
              </head>
              <body>
            <div class="background-blend-mode-QWNBt2">
            </div>
              </body>
            </html>
            """
        }
    }
}
