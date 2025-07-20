//
//  BackgroundAttachment Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS_PointFreeHTML
import CSSPropertyTypes
import CSSTypeTypes
import Dependencies
import PointFreeHTMLTestSupport
import PointFreeHTML
import Testing

@Suite(
    "BackgroundAttachment Tests",
    .snapshots(record: nil)
)
struct BackgroundAttachmentTests {
    @Test("HTML element renders with background-attachment fixed properly")
    func htmlElementWithBackgroundAttachmentFixedRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.fixed)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-attachment-eA7GJ1{background-attachment:fixed}

                </style>
              </head>
              <body>
            <div class="background-attachment-eA7GJ1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with background-attachment scroll properly")
    func htmlElementWithBackgroundAttachmentScrollRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.scroll)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-attachment-omYyh3{background-attachment:scroll}

                </style>
              </head>
              <body>
            <div class="background-attachment-omYyh3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with background-attachment local properly")
    func htmlElementWithBackgroundAttachmentLocalRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.local)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-attachment-rJE42{background-attachment:local}

                </style>
              </head>
              <body>
            <div class="background-attachment-rJE42">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background-attachment with global value renders properly")
    func htmlBackgroundAttachmentWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-attachment-trEDH1{background-attachment:inherit}

                </style>
              </head>
              <body>
            <div class="background-attachment-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background-attachment with media query renders properly")
    func htmlBackgroundAttachmentWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.fixed, media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            @media print{
              .background-attachment-ZdgCC3{background-attachment:fixed}
            }

                </style>
              </head>
              <body>
            <div class="background-attachment-ZdgCC3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background-attachment with pseudo-class renders properly")
    func htmlBackgroundAttachmentWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.fixed, pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-attachment-RYXzJ3:hover{background-attachment:fixed}

                </style>
              </head>
              <body>
            <div class="background-attachment-RYXzJ3">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background-attachment with prefix renders properly")
    func htmlBackgroundAttachmentWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundAttachment(.fixed, pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            my-component .background-attachment-8bC9G4{background-attachment:fixed}

                </style>
              </head>
              <body>
            <div class="background-attachment-8bC9G4">
            </div>
              </body>
            </html>
            """
        }
    }
}
