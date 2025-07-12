////
////  Animation Tests.swift
////  swift-html
////
////  Created by Claude AI on 11/04/2025.
////
//
//import Foundation
//import Testing
//import CSS_PointFreeHTML
//import PointFreeHTML
//import CSSPropertyTypes
//import CSSTypeTypes
//import Dependencies
//import DependenciesTestSupport
//import InlineSnapshotTesting
//import HTMLTestSupport
//
//"3s ease-in 1s infinite reverse both running slidein"
//
//@Suite(
//    "Animation Tests",
//    .snapshots(record: nil)
//)
//struct AnimationTests {
//    @Test("HTML element renders with animation string value properly")
//    func htmlElementWithAnimationStringRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.init(.duration(.s(3)), .timingFunction(.easeIn), .duration(.s(3)), .))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-RzKmLe{animation:3s ease-in 1s infinite reverse both running slidein}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-RzKmLe">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation simple value")
//    func htmlElementWithAnimationSimpleRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.string("fadeIn 2s"))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-WkDfA3{animation:fadeIn 2s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-WkDfA3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation with global value renders properly")
//    func htmlAnimationWithGlobalValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-trEDH1{animation:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation with media query renders properly")
//    func htmlAnimationWithMediaQueryRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.string("bounce 1s"), media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            @media print{
//              .animation-4k5svo{animation:bounce 1s}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-4k5svo">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation with pseudo-class renders properly")
//    func htmlAnimationWithPseudoClassRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.string("pulse 3s infinite"), pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-pG3fH2:hover{animation:pulse 3s infinite}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-pG3fH2">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation with prefix renders properly")
//    func htmlAnimationWithPrefixRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.string("slide 2s ease-out"), pre: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            my-component .animation-9LLdQl{animation:slide 2s ease-out}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-9LLdQl">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation with none value renders properly")
//    func htmlAnimationWithNoneValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animation(.none)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-3ZLVsZ{animation:none}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-3ZLVsZ">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//}
