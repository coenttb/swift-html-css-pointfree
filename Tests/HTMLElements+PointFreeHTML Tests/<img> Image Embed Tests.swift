import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import HTMLElementTypes

@Suite(
    "Image Element Tests",
    .snapshots(record: .missing)
)
struct ImageTests {
    @Test("Basic image renders correctly")
    func basicImageRendersCorrectly() {
        assertInlineSnapshot(
            of: Image(
                src: "image.jpg",
                alt: "Test image"
            ),
            as: .html
        ) {
            """
            <img alt="Test image" src="image.jpg">
            """
        }
    }
    
    @Test("Image with loading attribute renders correctly")
    func imageWithLoadingAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: Image(
                src: "lazy-image.jpg",
                alt: "Lazy loaded image",
                loading: .lazy
            ),
            as: .html
        ) {
            """
            <img alt="Lazy loaded image" loading="lazy" src="lazy-image.jpg">
            """
        }
    }
    
    @Test("Image within HTMLDocument renders correctly")
    func imageWithinHTMLDocumentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {
                    Image(
                        src: "document-image.jpg",
                        alt: "Document image"
                    )
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
            <div><img alt="Document image" src="document-image.jpg">
            </div>
              </body>
            </html>
            """
        }
    }
}
