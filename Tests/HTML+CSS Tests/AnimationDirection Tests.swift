////
////  AnimationDirection Tests.swift
////  swift-html
////
////  Created by Claude AI on 11/04/2025.
////
//
//import Foundation
//import Testing
//import HTML_CSS
//import PointFreeHTML
//import CSSPropertyTypes
//import CSSTypeTypes
//import Dependencies
//import DependenciesTestSupport
//import InlineSnapshotTesting
//import HTMLTestSupport
//
//@Suite(
//    "AnimationDirection Tests",
//    .snapshots(record: .failed)
//)
//struct AnimationDirectionTests {
//    @Test("HTML element renders with animation-direction normal properly")
//    func htmlElementWithAnimationDirectionNormalRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.normal)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-LtYIz5{animation-direction:normal}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-LtYIz5">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-direction reverse value")
//    func htmlElementWithAnimationDirectionReverseRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.reverse)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-UBNKL3{animation-direction:reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-UBNKL3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-direction alternate value")
//    func htmlElementWithAnimationDirectionAlternateRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.alternate)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-AzrRng{animation-direction:alternate}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-AzrRng">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML element renders with animation-direction alternate-reverse value")
//    func htmlElementWithAnimationDirectionAlternateReverseRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.alternateReverse)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-HF0GG1{animation-direction:alternate-reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-HF0GG1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-direction with global value renders properly")
//    func htmlAnimationDirectionWithGlobalValueRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-trEDH1{animation-direction:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-direction with media query renders properly")
//    func htmlAnimationDirectionWithMediaQueryRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.alternate, media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            @media print{
//              .animation-direction-aSLbO3{animation-direction:alternate}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-aSLbO3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-direction with pseudo-class renders properly")
//    func htmlAnimationDirectionWithPseudoClassRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.reverse, pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            .animation-direction-1EDVMm:hover{animation-direction:reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-1EDVMm">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//    
//    @Test("HTML animation-direction with prefix renders properly")
//    func htmlAnimationDirectionWithPrefixRendersCorrectly() {
//        assertInlineSnapshot(
//            of: HTMLDocument {
//                div.animationDirection(.normal, pre: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html lang="en">
//              <head>
//                <style>
//            my-component .animation-direction-sODZv0{animation-direction:normal}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-sODZv0">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//}
