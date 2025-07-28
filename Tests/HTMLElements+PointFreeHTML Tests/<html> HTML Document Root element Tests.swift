import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import HTMLElementTypes

@Suite(
    "HTML Document Root Element Tests",
    .snapshots(record: .missing)
)
struct RootTests {
    @Test("Basic HTML root renders correctly")
    func basicHTMLRootRendersCorrectly() {
        assertInlineSnapshot(
            of: HtmlRoot {
                HTMLText("Content")
            },
            as: .html
        ) {
            """
            
            <html>Content
            </html>
            """
        }
    }
    
    @Test("HTML root with lang attribute renders correctly")
    func htmlRootWithLangAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: HtmlRoot {
                Head {
                    Title {
                        HTMLText("Page Title")
                    }
                }
                Body {
                    HTMLText("Page content")
                }
            }
                .attribute("lang", "en"),
            as: .html
        ) {
            """
            
            <html lang="en">
              <head>
                <title>Page Title
                </title>
              </head>
              <body>Page content
              </body>
            </html>
            """
        }
    }
    
    @Test("HTML root with multiple attributes renders correctly")
    func htmlRootWithMultipleAttributesRendersCorrectly() {
        assertInlineSnapshot(
            of: HtmlRoot {
                Head {
                    Title {
                        HTMLText("International Page")
                    }
                }
                Body {
                    HTMLText("Content")
                }
            }
                .attribute("lang", "fr")
                .attribute("dir", "ltr")
                .attribute("xmlns", "http://www.w3.org/1999/xhtml"),
            as: .html
        ) {
            """

            <html lang="fr" dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
              <head>
                <title>International Page
                </title>
              </head>
              <body>Content
              </body>
            </html>
            """
        }
    }
    
    @Test("Empty HTML root renders correctly")
    func emptyHTMLRootRendersCorrectly() {
        assertInlineSnapshot(
            of: HtmlRoot {
                HTMLEmpty()
            },
            as: .html
        ) {
            """
            
            <html>
            </html>
            """
        }
    }
}
