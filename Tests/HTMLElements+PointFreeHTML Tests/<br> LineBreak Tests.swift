import Foundation
import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import HTMLTestSupport

@Suite(
    "LineBreak Element Tests",
    .snapshots(record: .failed),
)
struct LineBreakTests {
    @Test("Basic br renders correctly")
    func basicLineBreakRendersCorrectly() {
        assertInlineSnapshot(
            of: br(),
            as: .html
        ) {
            """
            <br>
            """
        }
    }
    
    @Test("LineBreak renders correctly")
    func brWithForAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                div {
                    br()
                }
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
              <body>
            <div><br>
            </div>
              </body>
            </html>
            """
        }
    }
}
