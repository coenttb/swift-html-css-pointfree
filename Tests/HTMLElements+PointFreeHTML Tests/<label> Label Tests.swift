import Testing
import HTMLElements_PointFreeHTML
import InlineSnapshotTesting
import PointFreeHTMLTestSupport

@Suite(
    "Label Element Tests",
    .snapshots(record: .failed)
)
struct LabelTests {
    @Test("Basic label renders correctly")
    func basicLabelRendersCorrectly() {
        assertInlineSnapshot(
            of: Label {
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
            of: Label(for: "username") {
                "Enter your username:"
                Input(name: "username", type: .text(.init()))
            },
            as: .html
        ) {
        """
        <label for="username">Enter your username:<input type="text" name="username"></label>
        """
        }
    }
}
