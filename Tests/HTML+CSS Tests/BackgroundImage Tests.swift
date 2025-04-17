//
//  BackgroundImage Tests.swift
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
    "BackgroundImage Tests",
    .snapshots(record: nil)
)
struct BackgroundImageTests {
    @Test("HTML element renders with background-image url properly")
    func htmlElementWithBackgroundImageUrlRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(.url("image.jpg"))
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-image-g5Rr32{background-image:url('image.jpg')}

                </style>
              </head>
              <body>
            <div class="background-image-g5Rr32">
            </div>
              </body>
            </html>
            """
        }
    }
    
//    @Test("HTML element renders with background-image linear-gradient properly")
//    func htmlElementWithBackgroundImageLinearGradientRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.backgroundImage(.linearGradient(degree: 45, .color(.red), .color(.blue)))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .background-image-EdcYg1{background-image:linear-gradient(45deg, red, blue)}
//
//                </style>
//              </head>
//              <body>
//            <div class="background-image-EdcYg1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with background-image radial-gradient properly")
//    func htmlElementWithBackgroundImageRadialGradientRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.backgroundImage(.radialGradient(.color(.red), .color(.blue)))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .background-image-kbqMx1{background-image:radial-gradient(red, blue)}
//
//                </style>
//              </head>
//              <body>
//            <div class="background-image-kbqMx1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with multiple background-images properly")
//    func htmlElementWithMultipleBackgroundImagesRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.backgroundImage(.composite([.url("image1.jpg"), .url("image2.jpg")]))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .background-image-PsRHs1{background-image:url("image1.jpg"), url("image2.jpg")}
//
//                </style>
//              </head>
//              <body>
//            <div class="background-image-PsRHs1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
    
    @Test("HTML background-image with none value renders properly")
    func htmlBackgroundImageWithNoneValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(BackgroundImage.none)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-image-Wl0y44{background-image:none}

                </style>
              </head>
              <body>
            <div class="background-image-Wl0y44">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-image with global value renders properly")
    func htmlBackgroundImageWithGlobalValueRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(.inherit)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-image-trEDH1{background-image:inherit}

                </style>
              </head>
              <body>
            <div class="background-image-trEDH1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-image with media query renders properly")
    func htmlBackgroundImageWithMediaQueryRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(.url("image.jpg"), media: .print)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media print{
              .background-image-GyfTO1{background-image:url('image.jpg')}
            }

                </style>
              </head>
              <body>
            <div class="background-image-GyfTO1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-image with pseudo-class renders properly")
    func htmlBackgroundImageWithPseudoClassRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(.url("image.jpg"), pseudo: .hover)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .background-image-IZL5o1:hover{background-image:url('image.jpg')}

                </style>
              </head>
              <body>
            <div class="background-image-IZL5o1">
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML background-image with prefix renders properly")
    func htmlBackgroundImageWithPrefixRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div.backgroundImage(.url("image.jpg"), pre: "my-component")
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            my-component .background-image-xezDo{background-image:url('image.jpg')}

                </style>
              </head>
              <body>
            <div class="background-image-xezDo">
            </div>
              </body>
            </html>
            """
        }
    }
}
