import HTMLElementsPointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import Testing

extension SnapshotTests {
    @Suite("LineBreak Element Tests")
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
                    BR()
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
      <div><br><br><br>
      </div>
        </body>
      </html>
      """
        }
    }

    @Test(
        "Bug with BR",
        .disabled("Only works with B(), not with B()()")
    )
    func addressWithContactInformationRendersCorrectly() {
        assertInlineSnapshot(
            of: Address {
                StrongImportance {
                    HTMLText("Company Name")
                }
                //                BR()()
                HTMLText("123 Business Ave")
                //                BR()()
                HTMLText("City, State 12345")
                //                BR()()
                Anchor(href: "tel:+1234567890") {
                    HTMLText("(123) 456-7890")
                }
                //                BR()()
                Anchor(href: "mailto:info@company.com") {
                    HTMLText("info@company.com")
                }
            },
            as: .html
        ) {
            """

      <address><strong>Company Name</strong><br>123 Business Ave<br>City, State 12345<br><a href="tel:+1234567890">(123) 456-7890</a><br><a href="mailto:info@company.com">info@company.com</a>
      </address>
      """
        }
    }
    }
}
