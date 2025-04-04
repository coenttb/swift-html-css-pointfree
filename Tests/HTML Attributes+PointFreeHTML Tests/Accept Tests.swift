import Foundation
import Testing
import HTML_Attributes_HTML
import PointFreeHTML
import InlineSnapshotTesting

@Suite(
    "Accept Attribute Tests",
//    .snapshots(record: .all)
)
struct AcceptTests {
    
    @Test("Input with accept attribute renders correctly")
    func inputWithAcceptAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: input()
                .attribute("type", "file")
                .accept("image/*"),
            as: .html
        ) {
            """
            <input accept="image/*" type="file">
            """
        }
    }
    
    @Test("Input with multiple file types renders correctly")
    func inputWithMultipleFileTypesRendersCorrectly() {
        assertInlineSnapshot(
            of: input()
                .attribute("type", "file")
                .accept([".pdf", ".doc", ".docx"]),
            as: .html
        ) {
            """
            <input accept=".pdf, .doc, .docx" type="file">
            """
        }
    }
    
    @Test("Input with MIME types renders correctly")
    func inputWithMimeTypesRendersCorrectly() {
        assertInlineSnapshot(
            of: input()
                .attribute("type", "file")
                .accept("application/pdf", "application/msword"),
            as: .html
        ) {
            """
            <input accept="application/pdf, application/msword" type="file">
            """
        }
    }
    
    @Test("Input with mixed accept types renders correctly")
    func inputWithMixedAcceptTypesRendersCorrectly() {
        assertInlineSnapshot(
            of: input()
                .attribute("type", "file")
                .accept("image/*", ".pdf", "application/msword"),
            as: .html
        ) {
            """
            <input accept="image/*, .pdf, application/msword" type="file">
            """
        }
    }
    
    @Test("Form with file input renders correctly")
    func formWithFileInputRendersCorrectly() {
        assertInlineSnapshot(
            of: form {
                label()
                    .for("fileUpload")
//                    .text("Upload Images:")
                
                input()
                    .id("fileUpload")
//                    .attribute("type", "file")
                    .accept(.image)
                    .multiple
            },
            as: .html
        ) {
            """

            <form><label for="fileUpload"></label><input multiple accept="image/*" id="fileUpload">
            </form>
            """
        }
    }
}
