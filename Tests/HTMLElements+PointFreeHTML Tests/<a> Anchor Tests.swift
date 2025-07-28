import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import HTMLElementTypes

@Suite(
    "Anchor Element Tests",
    .snapshots(record: .failed)
)
struct AnchorTests {
    @Test("Basic anchor renders correctly")
    func basicAnchorRendersCorrectly() {
        assertInlineSnapshot(
            of: Anchor(
                href: "https://example.com"
            ) {
                "Visit Example"
            },
            as: .html
        ) {
            """
            <a href="https://example.com">Visit Example</a>
            """
        }
    }
    
    @Test("Anchor with target blank renders correctly")
    func anchorWithTargetBlankRendersCorrectly() {
        assertInlineSnapshot(
            of: Anchor(
                href: "https://external.com",
                target: .blank
            ) {
                HTMLText("External Link")
            },
            as: .html
        ) {
            """
            <a target="_blank" href="https://external.com">External Link</a>
            """
        }
    }
    
    @Test("Anchor with download renders correctly")
    func anchorWithDownloadRendersCorrectly() {
        assertInlineSnapshot(
            of: Anchor(
                download: "manual.pdf",
                href: "/files/document.pdf"
            ) {
                "Download Manual"
            },
            as: .html
        ) {
            """
            <a href="/files/document.pdf" download="manual.pdf">Download Manual</a>
            """
        }
    }
    
    @Test("Anchor with rel and hreflang renders correctly")
    func anchorWithRelAndHreflangRendersCorrectly() {
        assertInlineSnapshot(
            of: Anchor(
                href: "https://es.example.com",
                hreflang: "es",
                rel: .alternate
            ) {
                "Versión en Español"
            },
            as: .html
        ) {
            """
            <a rel="alternate" hreflang="es" href="https://es.example.com">Versión en Español</a>
            """
        }
    }
    
    @Test("Anchor within HTMLDocument renders correctly")
    func anchorWithinHTMLDocumentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                Paragraph {
                    HTMLText("Please ")
                    Anchor(
                        href: "#contact"
                    ) {
                        "contact us"
                    }
                    HTMLText(" for more information.")
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
            <p>Please <a href="#contact">contact us</a> for more information.
            </p>
              </body>
            </html>
            """
        }
    }
}
