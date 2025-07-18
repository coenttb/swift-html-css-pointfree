import Foundation
import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHtmlTestSupport

@Suite(
    "LineBreak Element Tests",
    .snapshots(record: nil),
)
struct LineBreakTests {
    @Test("Basic br renders correctly")
    func basicLineBreakRendersCorrectly() {
        assertInlineSnapshot(
            of: BR(),
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
                ContentDivision {
                    BR()
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
