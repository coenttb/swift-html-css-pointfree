import HTMLElementsPointFreeHTML
import HTMLElementTypes
import InlineSnapshotTesting
import PointFreeHTMLTestSupport
import Testing

@Suite(
    "Param Element Tests",
    .snapshots(record: .missing)
)
struct ParamTests {
    @Test("Basic param renders correctly")
    func basicParamRendersCorrectly() {
        assertInlineSnapshot(
            of: Param(
                name: "autoplay",
                value: "true"
            )(),
            as: .html
        ) {
            """

            <param value="true" name="autoplay">
            """
        }
    }

    @Test("Param with different types renders correctly")
    func paramWithDifferentTypesRendersCorrectly() {
        assertInlineSnapshot(
            of: Param(
                name: "quality",
                value: "high"
            )(),
            as: .html
        ) {
            """

            <param value="high" name="quality">
            """
        }
    }

    @Test("Multiple params render correctly")
    func multipleParamsRenderCorrectly() {
        assertInlineSnapshot(
            of: HTMLGroup {
                Param(
                    name: "movie",
                    value: "video.swf"
                )()
                Param(
                    name: "quality",
                    value: "high"
                )()
            },
            as: .html
        ) {
            """

            <param value="video.swf" name="movie">
            <param value="high" name="quality">
            """
        }
    }

    @Test("Param within HTMLDocument renders correctly")
    func paramWithinHTMLDocumentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTMLDocument {
                ContentDivision {
                    Param(
                        name: "src",
                        value: "example.swf"
                    )()
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
            <div>
              <param value="example.swf" name="src">
            </div>
              </body>
            </html>
            """
        }
    }
}
