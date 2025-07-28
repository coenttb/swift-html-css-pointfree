import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import HTMLElementTypes

@Suite(
    "LineBreakOpportunity Element Tests",
    .snapshots(record: .failed)
)
struct LineBreakOpportunityTests {
    @Test("Basic wbr renders correctly")
    func basicWbrRendersCorrectly() {
        assertInlineSnapshot(
            of: LineBreakOpportunity(),
            as: .html
        ) {
            """

            <wbr>
            """
        }
    }
    
    @Test("LineBreakOpportunity within text renders correctly")
    func lineBreakOpportunityWithinTextRendersCorrectly() {
        assertInlineSnapshot(
            of: Paragraph {
                HTMLText("This is a very")
                LineBreakOpportunity()
                HTMLText("long word that might need to break")
            },
            as: .html
        ) {
            """

            <p>This is a very
              <wbr>long word that might need to break
            </p>
            """
        }
    }
    
    @Test("LineBreakOpportunity within HTMLDocument renders correctly")
    func lineBreakOpportunityWithinHTMLDocumentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {
                    HTMLText("Word")
                    LineBreakOpportunity()
                    HTMLText("Break")
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
            <div>Word
              <wbr>Break
            </div>
              </body>
            </html>
            """
        }
    }
}
