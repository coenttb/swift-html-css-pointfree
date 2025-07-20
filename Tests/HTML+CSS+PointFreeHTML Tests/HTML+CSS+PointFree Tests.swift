//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 10/04/2025.
//

import Dependencies
import DependenciesTestSupport
import Foundation
import HTML_CSS_PointFreeHTML
import PointFreeHtmlTestSupport
import InlineSnapshotTesting
import Testing

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
    
    @Test(
        "General3",
        .snapshots(record: .failed)
    )
    func general3() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {}
                    .padding(.rem(3), media: .desktop)
            },
            as: .html
        ) {
            """
            <!doctype html>
            <html lang="en">
              <head>
                <style>
            @media only screen and (min-width: 832px){
              .padding-JCLrx{padding:3rem}
            }

                </style>
              </head>
              <body>
            <div class="padding-JCLrx">
            </div>
              </body>
            </html>
            """
        }
    }
}
