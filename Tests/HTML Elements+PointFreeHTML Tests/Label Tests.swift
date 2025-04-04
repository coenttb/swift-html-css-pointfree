import Foundation
import Testing
import HTML_Elements_HTML
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
    
    @Test("Label with nested input renders correctly")
    func labelWithNestedInputRendersCorrectly() {
        assertInlineSnapshot(
            of: PointFreeHTML.label {
                "Remember me"
                PointFreeHTML.input()
                    .attribute("type", "checkbox")
                    .attribute("name", "remember")
            },
            as: .html
        ) {
            """
            <label>Remember me<input type="checkbox" name="remember"></label>
            """
        }
    }
    
    @Test("Label with complex content renders correctly")
    func labelWithComplexContentRendersCorrectly() {
        assertInlineSnapshot(
            of: HTML_Elements.label(for: "agree") {
                PointFreeHTML.span {
                    "I agree to the "
                }
                    .attribute("class", "checkbox-label")
                PointFreeHTML.strong {
                    "Terms and Conditions"
                }
            },
            as: .html
        ) {
            """
            <label for="agree"><span class="checkbox-label">I agree to the </span><strong>Terms and Conditions</strong></label>
            """
        }
    }
}
