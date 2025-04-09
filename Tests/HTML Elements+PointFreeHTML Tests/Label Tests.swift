import Foundation
import Testing
import HTML_Elements_PointFreeHTML
import InlineSnapshotTesting

@Suite(
    "Label Element Tests",
    .snapshots(record: nil),
)
struct LabelTests {
    @Test("Basic label renders correctly")
    func basicLabelRendersCorrectly() {
        assertInlineSnapshot(
            of: label {
                "Username"
            },
            as: .html
        ) {
            """
            <label>Username</label>
            """
        }
    }
    
    @Test("Label with 'for' attribute renders correctly")
    func labelWithForAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: label(for: "username") {
                "Enter your username:"
            },
            as: .html
        ) {
            """
            <label for="username">Enter your username:</label>
            """
        }
    }
}
