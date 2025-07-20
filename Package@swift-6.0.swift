// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let htmlCSS: Self = "CSS+PointFreeHTML"
    static let htmlCSSPointFree: Self = "HTML+CSS+PointFreeHTML"
    static let htmlAttributesPointFreeHTML: Self = "HTMLAttributes+PointFreeHTML"
    static let htmlElementsPointFreeHTML: Self = "HTMLElements+PointFreeHTML"
}

extension Target.Dependency {
    static var htmlCSS: Self { .target(name: .htmlCSS) }
    static var htmlAttributesPointFreeHTML: Self { .target(name: .htmlAttributesPointFreeHTML) }
    static var htmlElementsPointFreeHTML: Self { .target(name: .htmlElementsPointFreeHTML) }
    static var htmlCSSPointFree: Self { .target(name: .htmlCSSPointFree) }
}

extension Target.Dependency {
    static var cssPropertyTypes: Self { .product(name: "CSSPropertyTypes", package: "swift-css-types") }
    static var cssAtRuleTypes: Self { .product(name: "CSSAtRuleTypes", package: "swift-css-types") }
    static var cssTypes: Self { .product(name: "CSSTypes", package: "swift-css-types") }
    static var htmlAttributeTypes: Self { .product(name: "HTMLAttributeTypes", package: "swift-html-types") }
    static var htmlElementTypes: Self { .product(name: "HTMLElementTypes", package: "swift-html-types") }
    static var pointFreeHTML: Self { .product(name: "PointFreeHTML", package: "pointfree-html") }
    static var pointFreeHtmlTestSupport: Self { .product(name: "PointFreeHTMLTestSupport", package: "pointfree-html") }
}

let package = Package(
    name: "swift-html-css-pointfree",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .watchOS(.v10),
        .macCatalyst(.v17),
      ],
    products: [
        .library(name: .htmlCSS, targets: [.htmlCSS]),
        .library(name: .htmlCSSPointFree, targets: [.htmlCSSPointFree]),
        .library(name: .htmlAttributesPointFreeHTML, targets: [.htmlAttributesPointFreeHTML]),
        .library(name: .htmlElementsPointFreeHTML, targets: [.htmlElementsPointFreeHTML]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-html-types.git", branch: "main"),
        .package(url: "https://github.com/coenttb/swift-css-types.git", branch: "main"),
        .package(url: "https://github.com/coenttb/pointfree-html.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .htmlCSSPointFree,
            dependencies: [
                .htmlCSS,
                .pointFreeHTML,
                .cssTypes,
                .htmlElementsPointFreeHTML,
                .htmlAttributesPointFreeHTML,
            ]
        ),
        .testTarget(
            name: .htmlCSSPointFree.tests,
            dependencies: [
                .htmlCSSPointFree,
                .pointFreeHTML,
                .pointFreeHtmlTestSupport,
            ]
        ),
        .target(
            name: .htmlCSS,
            dependencies: [
                .cssTypes,
                .pointFreeHTML,
            ]
        ),
        .testTarget(
            name: .htmlCSS.tests,
            dependencies: [
                .htmlCSS,
                .cssTypes,
                .pointFreeHTML,
                .pointFreeHtmlTestSupport,
            ]
        ),
        .target(
            name: .htmlAttributesPointFreeHTML,
            dependencies: [
                .htmlAttributeTypes,
                .pointFreeHTML
            ]
        ),
        .testTarget(
            name: .htmlAttributesPointFreeHTML.tests,
            dependencies: [
                .htmlAttributesPointFreeHTML,
                .pointFreeHTML,
                .pointFreeHtmlTestSupport,
            ]
        ),
        .target(
            name: .htmlElementsPointFreeHTML,
            dependencies: [
                .htmlElementTypes,
                .htmlAttributesPointFreeHTML,
                .pointFreeHTML,
            ]
        ),
        .testTarget(
            name: .htmlElementsPointFreeHTML.tests,
            dependencies: [
                .htmlElementsPointFreeHTML,
                .pointFreeHTML,
                .pointFreeHtmlTestSupport
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: Self { "\(self) Tests" }
}
