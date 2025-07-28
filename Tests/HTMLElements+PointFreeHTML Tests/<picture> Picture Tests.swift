import HTMLElements_PointFreeHTML
import HTMLElementTypes
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import Testing

@Suite(
    "Picture Element Tests",
    .snapshots(record: .missing)
)
struct PictureTests {
    @Test("Basic picture renders correctly")
    func basicPictureRendersCorrectly() {
        assertInlineSnapshot(
            of: Picture {
                Image(
                    src: "image.jpg",
                    alt: "A beautiful landscape"
                )
            },
            as: .html
        ) {
            """

            <picture><img alt="A beautiful landscape" src="image.jpg">
            </picture>
            """
        }
    }

    @Test("Picture within HTMLDocument renders correctly")
    func pictureWithinHTMLDocumentRendersCorrectly() {
        let picture = Picture {
            Image(
                src: "banner.jpg",
                alt: "Website banner"
            )
        }

        assertInlineSnapshot(
            of: HTMLDocument {
                picture
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
            <picture><img alt="Website banner" src="banner.jpg">
            </picture>
              </body>
            </html>
            """
        }
    }
}
