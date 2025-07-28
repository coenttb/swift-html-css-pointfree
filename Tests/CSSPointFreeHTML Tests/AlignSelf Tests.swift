//
//  AlignSelf Tests.swift
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
    "AlignSelf Tests",
    .snapshots(record: nil)
)
struct AlignSelfTests {
    @Test("HTML element renders with align-self properly")
    func htmlElementWithAlignSelfRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.center)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-self-CdPBO2{align-self:center}

                </style>
              </head>
              <body>
            <div class="align-self-CdPBO2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with align-self auto value")
    func htmlElementWithAlignSelfAutoRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.auto)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-self-u7yQf2{align-self:auto}

                </style>
              </head>
              <body>
            <div class="align-self-u7yQf2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-self with global value renders properly")
    func htmlAlignSelfWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-self-trEDH1{align-self:inherit}

                </style>
              </head>
              <body>
            <div class="align-self-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-self with media query renders properly")
    func htmlAlignSelfWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.center, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            @media print{
              .align-self-pUz0j3{align-self:center}
            }

                </style>
              </head>
              <body>
            <div class="align-self-pUz0j3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-self with pseudo-class renders properly")
    func htmlAlignSelfWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.baseline, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-self-fCQVh2:hover{align-self:baseline}

                </style>
              </head>
              <body>
            <div class="align-self-fCQVh2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-self with prefix renders properly")
    func htmlAlignSelfWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.flexEnd, selector: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            my-component .align-self-dzpgf{align-self:flex-end}

                </style>
              </head>
              <body>
            <div class="align-self-dzpgf">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML align-self with stretch value renders properly")
    func htmlAlignSelfWithStretchValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.alignSelf(.stretch)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .align-self-msN8p3{align-self:stretch}

                </style>
              </head>
              <body>
            <div class="align-self-msN8p3">
            </div>
              </body>
            </html>
            """
        }
    }
}
