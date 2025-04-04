import Foundation
import Testing
import HTML_Elements_HTML
import InlineSnapshotTesting

@Suite(
    "Form Element Tests",
    .snapshots(record: nil),
)
struct FormTests {
    @Test("Basic form renders correctly")
    func basicFormRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                name: "login",
                action: .relative("/login"),
                method: .post
            ) {
                HTMLEmpty()
            },
            as: .html
        ) {
            """

            <form method="post" action="/login" name="login">
            </form>
            """
        }
    }
    
    @Test("Form with all attributes renders correctly")
    func formWithAllAttributesRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                autocapitalize: .words,
                autocomplete: .off,
                name: "registration",
                rel: "nofollow",
                action: .absolute("https://example.com/register"),
                enctype: .multipartFormData,
                method: .post,
                novalidate: true,
                target: .blank
            ) {
                HTMLEmpty()
            },
            as: .html
        ) {
            """

            <form target="_blank" novalidate method="post" enctype="multipart/form-data" action="https://example.com/register" rel="nofollow" name="registration" autocomplete="off" autocapitalize="words">
            </form>
            """
        }
    }
    
    @Test("Form with content renders correctly")
    func formWithContentRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                name: "contact",
                action: .relative("/contact"),
                method: .post
            ) {
                PointFreeHTML.div {
                    label(for: "name") {
                        "Name:"
                    }
                       
                    input.text(
                        name: "name",
                        required: true
                    )
                    .id("name")
                    
                    label(for: "email") {
                        "Email:"
                    }
                    
                    input.email(
                        name: "email",
                        required: true
                    )
                    .id("email")
                    
                    PointFreeHTML.button {
                        "Submit"
                    }
                        .attribute("type", "submit")
                }
            },
            as: .html
        ) {
            """

            <form method="post" action="/contact" name="contact">
              <div><label for="name">Name:</label><input id="name" required type="text" name="name"><label for="email">Email:</label><input id="email" required type="email" name="email"><button type="submit">Submit</button>
              </div>
            </form>
            """
        }
    }
    
    @Test("Form with deprecated accept attribute renders correctly")
    func formWithDeprecatedAcceptAttributeRendersCorrectly() {
        let form = form(
            name: "upload",
            action: .relative("/upload"),
            enctype: .multipartFormData,
            method: .post,
        ) {
            PointFreeHTML.input()
                .attribute("type", "file")
                .attribute("name", "document")
        }
        
        // Manually set the deprecated attribute for testing purposes
        // This uses runtime reflection to bypass the deprecation warning
        var mutableForm = form
        mutableForm.accept = .documents
        
        assertInlineSnapshot(
            of: mutableForm,
            as: .html
        ) {
            """

            <form method="post" enctype="multipart/form-data" action="/upload" name="upload" accept=".pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-powerpoint,application/vnd.openxmlformats-officedocument.presentationml.presentation"><input type="file" name="document">
            </form>
            """
        }
    }
    
//    @Test("Form with acceptCharset renders correctly")
//    func formWithAcceptCharsetRendersCorrectly() {
//        assertInlineSnapshot(
//            of: form(
//                name: "international",
//                action: .relative("/submit"),
//                method: .post,
//                // Use reflection to override the default charset value
//                // for testing purposes
//                acceptCharset: .init("UTF-8, ISO-8859-1")
//            ) {
//                HTMLEmpty()
//            },
//            as: .html
//        ) {
//            """
//            <form charset="UTF-8, ISO-8859-1" action="/submit" method="post" name="international"></form>
//            """
//        }
//    }
//    
    @Test("Form with GET method renders correctly")
    func formWithGETMethodRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                name: "search",
                action: .relative("/search"),
                method: .get
            ) {
                PointFreeHTML.input()
                    .attribute("type", "search")
                    .attribute("name", "q")
                PointFreeHTML.button {
                    "Search"
                }
                    .attribute("type", "submit")
            },
            as: .html
        ) {
            """

            <form method="get" action="/search" name="search"><input type="search" name="q"><button type="submit">Search</button>
            </form>
            """
        }
    }
    
    @Test("Form with target attribute renders correctly")
    func formWithTargetAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                name: "external",
                action: .absolute("https://api.example.com/submit"),
                method: .post,
                target: .blank
            ) {
                HTMLEmpty()
            },
            as: .html
        ) {
            """

            <form target="_blank" method="post" action="https://api.example.com/submit" name="external">
            </form>
            """
        }
    }
    
    @Test("Form with autocomplete attribute renders correctly")
    func formWithAutocompleteAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                autocomplete: .off,
                name: "payment",
                action: .relative("/payment"),
                method: .post,
            ) {
                PointFreeHTML.div {
                    PointFreeHTML.input()
                        .attribute("type", "text")
                        .attribute("name", "cardNumber")
                        .attribute("autocomplete", "cc-number")
                }
            },
            as: .html
        ) {
            """

            <form method="post" action="/payment" name="payment" autocomplete="off">
              <div><input type="text" name="cardNumber" autocomplete="cc-number">
              </div>
            </form>
            """
        }
    }
    
    @Test("Form with dialog method renders correctly")
    func formWithDialogMethodRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                method: .dialog
            ) {
                PointFreeHTML.button {
                    "Close"
                }
                    .attribute("type", "submit")
            },
            as: .html
        ) {
            """

            <form method="dialog"><button type="submit">Close</button>
            </form>
            """
        }
    }
    
    @Test("Form with rel attribute renders correctly")
    func formWithRelAttributeRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                name: "external-form",
                rel: "nofollow noopener",
                action: .absolute("https://external-service.com/api"),
                method: .post,
            ) {
                HTMLEmpty()
            },
            as: .html
        ) {
            """

            <form method="post" action="https://external-service.com/api" rel="nofollow noopener" name="external-form">
            </form>
            """
        }
    }
    
    @Test("Form with custom autocapitalize renders correctly")
    func formWithCustomAutocapitalizeRendersCorrectly() {
        assertInlineSnapshot(
            of: form(
                autocapitalize: .characters,
                name: "capitalize-test",
            ) {
                PointFreeHTML.input()
                    .attribute("type", "text")
                    .attribute("name", "uppercase")
            },
            as: .html
        ) {
            """

            <form name="capitalize-test" autocapitalize="characters"><input type="text" name="uppercase">
            </form>
            """
        }
    }
}
