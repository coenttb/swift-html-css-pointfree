import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport

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
            <html>
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
