//
//  AlignContent Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSSPointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import PointFreeHTML
import PointFreeHTMLTestSupport
import Testing

@Suite(
    "AlignContent Tests",
    .snapshots(record: nil)
)
struct AlignContentTests {
    @Test("HTML element renders with align-content properly")
    func htmlElementWithAlignContentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.center)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-content-CdPBO2{align-content:center}

                </style>
              </head>
              <body>
            <div class="align-content-CdPBO2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with align-content flex-start value")
    func htmlElementWithAlignContentFlexStartRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.flexStart)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-content-n56cj2{align-content:flex-start}

                </style>
              </head>
              <body>
            <div class="align-content-n56cj2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-content with global value renders properly")
    func htmlAlignContentWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-content-trEDH1{align-content:inherit}

                </style>
              </head>
              <body>
            <div class="align-content-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-content with media query renders properly")
    func htmlAlignContentWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.center, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            @media print{
              .align-content-pUz0j3{align-content:center}
            }

                </style>
              </head>
              <body>
            <div class="align-content-pUz0j3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-content with pseudo-class renders properly")
    func htmlAlignContentWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.spaceAround, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-content-a0Jun2:hover{align-content:space-around}

                </style>
              </head>
              <body>
            <div class="align-content-a0Jun2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-content with prefix renders properly")
    func htmlAlignContentWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.spaceBetween, selector: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            my-component .align-content-KzNip3{align-content:space-between}

                </style>
              </head>
              <body>
            <div class="align-content-KzNip3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-content with stretch value renders properly")
    func htmlAlignContentWithStretchValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignContent(.stretch)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-content-msN8p3{align-content:stretch}

                </style>
              </head>
              <body>
            <div class="align-content-msN8p3">
            </div>
              </body>
            </html>
            """
        }
    }
}
