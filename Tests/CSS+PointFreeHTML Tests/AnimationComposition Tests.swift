////
////  AnimationComposition Tests.swift
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
//    "AnimationComposition Tests",
//    .snapshots(record: nil)
//)
//struct AnimationCompositionTests {
//    @Test("HTML element renders with animation-composition replace properly")
//    func htmlElementWithAnimationCompositionReplaceRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.replace)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-composition-tKSZv5{animation-composition:replace}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-tKSZv5">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-composition add value")
//    func htmlElementWithAnimationCompositionAddRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.add)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-composition-2bfAc4{animation-composition:add}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-2bfAc4">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-composition accumulate value")
//    func htmlElementWithAnimationCompositionAccumulateRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.accumulate)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-composition-N6c9H5{animation-composition:accumulate}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-N6c9H5">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-composition with global value renders properly")
//    func htmlAnimationCompositionWithGlobalValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-composition-trEDH1{animation-composition:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-composition with media query renders properly")
//    func htmlAnimationCompositionWithMediaQueryRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.add, media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            @media print{
//              .animation-composition-Cm0lVg{animation-composition:add}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-Cm0lVg">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-composition with pseudo-class renders properly")
//    func htmlAnimationCompositionWithPseudoClassRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.replace, pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-composition-Vt07jl:hover{animation-composition:replace}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-Vt07jl">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-composition with prefix renders properly")
//    func htmlAnimationCompositionWithPrefixRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationComposition(.accumulate, pre: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            my-component .animation-composition-JmjCCd{animation-composition:accumulate}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-composition-JmjCCd">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//}
