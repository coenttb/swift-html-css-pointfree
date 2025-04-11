//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import HTML_CSS_PointFreeHTML
import Foundation
import Testing
import Dependencies
import DependenciesTestSupport
import InlineSnapshotTesting
import HTMLTestSupport

@Suite(
    "HTML+CSS+PointFreeHTML Tests",
    .snapshots(record: nil)
)
struct Tests {
    @Test("Labeled Input renders correctly")
    func LabeledInput() {
        assertInlineSnapshot(
            of: HTMLDocument {
                label(for: "test") { input.text(name: "test") }
                    .color(Color.red)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .color-dMYaj4{color:red}

                </style>
              </head>
              <body><label class="color-dMYaj4" for="test"><input type="text" name="test"></label>
              </body>
            </html>
            """
        }
    }
    
    @Test("General")
    func general1() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div {
                    h1 { "Type-safe HTML" }
                      .color(light: .blue, dark: .red)
                      .fontSize(.px(24))
                    p { "With type-safe CSS!" }
                        .marginTop(.px(10))
                    
                    video(src: "/public/video/example.mp4", autoplay: true) {}
                }
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            .font-size-t6pNK3{font-size:24px}
            .color-lVtzG2{color:@media (prefers-color-scheme: light) { color:blue } @media (prefers-color-scheme: dark) { color:red }}
            .margin-top-Fqw6a1{margin-top:10px}

                </style>
              </head>
              <body>
            <div>
              <h1 class="font-size-t6pNK3 color-lVtzG2">Type-safe HTML
              </h1>
              <p class="margin-top-Fqw6a1">With type-safe CSS!
              </p>
              <video autoplay src="/public/video/example.mp4">
              </video>
            </div>
              </body>
            </html>
            """
        }
    }
}
