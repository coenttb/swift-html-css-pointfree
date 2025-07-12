////
////  AnimationDuration Tests.swift
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
//@Suite(
//    "AnimationDuration Tests",
//    .snapshots(record: nil)
//)
//struct AnimationDurationTests {
//    @Test("HTML element renders with animation-duration time value properly")
//    func htmlElementWithAnimationDurationTimeRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("3s"))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-jrYNbv{animation-duration:3s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-jrYNbv">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-duration milliseconds value")
//    func htmlElementWithAnimationDurationMillisecondsRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("200ms"))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-Akt0Gk{animation-duration:200ms}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-Akt0Gk">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-duration multiple times")
//    func htmlElementWithAnimationDurationMultipleTimesRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.times(["1s", "2.5s"]))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-6Nkxph{animation-duration:1s, 2.5s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-6Nkxph">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-duration with global value renders properly")
//    func htmlAnimationDurationWithGlobalValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-trEDH1{animation-duration:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-duration with media query renders properly")
//    func htmlAnimationDurationWithMediaQueryRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("0.5s"), media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            @media print{
//              .animation-duration-OYP8Hm{animation-duration:0.5s}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-OYP8Hm">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-duration with pseudo-class renders properly")
//    func htmlAnimationDurationWithPseudoClassRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("1.5s"), pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-4jOFVl:hover{animation-duration:1.5s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-4jOFVl">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-duration with prefix renders properly")
//    func htmlAnimationDurationWithPrefixRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("300ms"), pre: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            my-component .animation-duration-D4Z2Sg{animation-duration:300ms}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-D4Z2Sg">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-duration with zero value renders properly")
//    func htmlAnimationDurationWithZeroValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDuration(.time("0s"))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-duration-z4x9uP{animation-duration:0s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-z4x9uP">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//}
