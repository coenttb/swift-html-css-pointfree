//
//  Background Tests.swift
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
    "Background Tests",
    .snapshots(record: nil)
)
struct BackgroundTests {
    @Test("HTML element renders with background color properly")
    func htmlElementWithBackgroundColorRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.color(.red))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-dMYaj4{background:red}

                </style>
              </head>
              <body>
            <div class="background-dMYaj4">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML element renders with background image properly")
    func htmlElementWithBackgroundImageRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.image("image.jpg"))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-g5Rr32{background:url('image.jpg')}

                </style>
              </head>
              <body>
            <div class="background-g5Rr32">
            </div>
              </body>
            </html>
            """
        }
    }

//    @Test("HTML element renders with complex background properly")
//    func htmlElementWithComplexBackgroundRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.background(.composite([.color(.red), .image(.url("image.jpg"))]))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .background-yFkjt1{background:red url("image.jpg")}
//
//                </style>
//              </head>
//              <body>
//            <div class="background-yFkjt1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }

    @Test("HTML background with none value renders properly")
    func htmlBackgroundWithNoneValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(Background.none)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-Wl0y44{background:none}

                </style>
              </head>
              <body>
            <div class="background-Wl0y44">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background with global value renders properly")
    func htmlBackgroundWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-trEDH1{background:inherit}

                </style>
              </head>
              <body>
            <div class="background-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background with media query renders properly")
    func htmlBackgroundWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.color(.red), media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            @media print{
              .background-Igguo2{background:red}
            }

                </style>
              </head>
              <body>
            <div class="background-Igguo2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background with pseudo-class renders properly")
    func htmlBackgroundWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.color(.red), pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            .background-S9wdG2:hover{background:red}

                </style>
              </head>
              <body>
            <div class="background-S9wdG2">
            </div>
              </body>
            </html>
            """
        }
    }

    @Test("HTML background with prefix renders properly")
    func htmlBackgroundWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.background(.color(.red), pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html>
              <head>
                <style>
            my-component .background-KoS5g3{background:red}

                </style>
              </head>
              <body>
            <div class="background-KoS5g3">
            </div>
              </body>
            </html>
            """
        }
    }
}
