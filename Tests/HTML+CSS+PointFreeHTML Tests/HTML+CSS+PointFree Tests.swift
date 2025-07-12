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
    @Test("Labeled Input renders correctly in a div")
    func labeledInputInDiv() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {
                    Label {
                        "label-text"
                        Input.text
                            .color(.red)
                    }
                        .color(.red)
                }
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
              <body>
            <div><label class="color-dMYaj4">label-text<input class="color-dMYaj4" type="text"></label>
            </div>
              </body>
            </html>
            """
        }
    }
    
    @Test("General")
    func general1() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {
                    H1 { "Type-safe HTML" }
                      .color(light: .blue, dark: .red)
                      .fontSize(.px(24))
                    Paragraph { "With type-safe CSS!" }
                        .marginTop(.px(10))
                    
                    Video(src: "/public/video/example.mp4", autoplay: true) {}
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
            .color-jiDhg4{color:blue}
            .margin-top-Fqw6a1{margin-top:10px}
            @media (prefers-color-scheme: dark){
              .color-hhm4d1{color:red}
            }

                </style>
              </head>
              <body>
            <div>
              <h1 class="font-size-t6pNK3 color-jiDhg4 color-hhm4d1">Type-safe HTML
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
    
    @Test("General2")
    func general2() {
        assertInlineSnapshot(
            of: HTMLDocument {
                Input.button(name: "name", value: "value", disabled: false, form: nil)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>

                </style>
              </head>
              <body><input value="value" type="button" name="name">
              </body>
            </html>
            """
        }
    }
}
