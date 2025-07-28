import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import HTMLElementTypes

@Suite(
    "DataList Element Tests",
    .snapshots(record: .failed)
)
struct DataListTests {
    @Test("Basic datalist renders correctly")
    func basicDatalistRendersCorrectly() {
        assertInlineSnapshot(
            of: DataList {
                Option(value: .init("apple")) {
                    HTMLText("Apple")
                }
                Option(value: .init("banana")) {
                    HTMLText("Banana")
                }
            },
            as: .html
        ) {
            """

            <datalist>
              <option value="apple">Apple
              </option>
              <option value="banana">Banana
              </option>
            </datalist>
            """
        }
    }
    
    @Test("DataList within HTMLDocument renders correctly")
    func datalistWithinHTMLDocumentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                DataList {
                    Option(value: "javascript") {
                        HTMLText("JavaScript")
                    }
                    Option(value: "python") {
                        "Python"
                    }
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
            <datalist>
              <option value="javascript">JavaScript
              </option>
              <option value="python">Python
              </option>
            </datalist>
              </body>
            </html>
            """
        }
    }
    
    @Test("DataList within HTMLDocument renders correctly")
    func datalistWithinHTMLDocumentRendersCorrectly2() {
        assertInlineSnapshot(
            of: HTMLDocument {
                DataList {
                    Option(value: "javascript")
                    Option(value: "python")
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
            <datalist>
              <option value="javascript">
              </option>
              <option value="python">
              </option>
            </datalist>
              </body>
            </html>
            """
        }
    }
}
