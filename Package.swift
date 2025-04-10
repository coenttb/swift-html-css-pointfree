// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let html: Self = "HTML"
    static let htmlAttributesPointFreeHTML: Self = "HTMLAttributes+PointFreeHTML"
    static let htmlElementsPointFreeHTML: Self = "HTMLElements+PointFreeHTML"
    static let htmlCSS: Self = "HTML+CSS"
    static let htmlCSSPointFree: Self = "HTML+CSS+PointFreeHTML"
}

extension Target.Dependency {
    static var html: Self { .target(name: .html) }
    static var htmlCSS: Self { .target(name: .htmlCSS) }
    static var htmlAttributesPointFreeHTML: Self { .target(name: .htmlAttributesPointFreeHTML) }
    static var htmlElementsPointFreeHTML: Self { .target(name: .htmlElementsPointFreeHTML) }
    static var htmlCSSPointFree: Self { .target(name: .htmlCSSPointFree) }
}

extension Target.Dependency {
    static var htmlElementTypes: Self { .product(name: "HTMLElementTypes", package: "swift-html-types") }
    static var htmlAttributeTypes: Self { .product(name: "HTMLAttributeTypes", package: "swift-html-types") }
    static var cssPropertyTypes: Self { .product(name: "CSSPropertyTypes", package: "swift-css-types") }
    static var pointFreeHTML: Self { .product(name: "PointFreeHTML", package: "pointfree-html") }
    static var inlineSnapshotTesting: Self { .product(name: "InlineSnapshotTesting", package: "swift-snapshot-testing") }
    static var dependenciesTestSupport: Self { .product(name: "DependenciesTestSupport", package: "swift-dependencies") }
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
        .library(name: .html, targets: [.html]),
        .library(name: .htmlCSS, targets: [.htmlCSS]),
        .library(name: .htmlCSSPointFree, targets: [.htmlCSSPointFree]),
        .library(name: .htmlAttributesPointFreeHTML, targets: [.htmlAttributesPointFreeHTML]),
        .library(name: .htmlElementsPointFreeHTML, targets: [.htmlElementsPointFreeHTML]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-html-types.git", branch: "main"),
        .package(url: "https://github.com/coenttb/swift-css-types.git", branch: "main"),
        .package(url: "https://github.com/coenttb/pointfree-html.git", branch: "main"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.18.3"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies.git", branch: "1.9.0"),
    ],
    targets: [
        .target(
            name: .html,
            dependencies: [
                .pointFreeHTML,
                .htmlAttributesPointFreeHTML,
                .htmlElementsPointFreeHTML,
            ]
        ),
        .testTarget(
            name: .html.tests,
            dependencies: [
                .html,
                .inlineSnapshotTesting,
                .dependenciesTestSupport,
                .pointFreeHTML,
            ]
        ),
        .target(
            name: .htmlCSSPointFree,
            dependencies: [
                .htmlCSS,
                .pointFreeHTML,
                .htmlAttributesPointFreeHTML,
                .htmlElementsPointFreeHTML,
            ]
        ),
        .testTarget(
            name: .htmlCSSPointFree.tests,
            dependencies: [
                .htmlCSSPointFree,
                .inlineSnapshotTesting,
                .dependenciesTestSupport,
                .pointFreeHTML,
            ]
        ),
        .target(
            name: .htmlCSS,
            dependencies: [
                .cssPropertyTypes,
                .pointFreeHTML,
            ]
        ),
        .testTarget(
            name: .htmlCSS.tests,
            dependencies: [
                .htmlCSS,
                .cssPropertyTypes,
                .pointFreeHTML,
                .inlineSnapshotTesting,
                .dependenciesTestSupport,
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
                .inlineSnapshotTesting,
                .dependenciesTestSupport,
                .pointFreeHTML,
            ]
        ),
        .target(
            name: .htmlElementsPointFreeHTML,
            dependencies: [
                .htmlElementTypes,
                .htmlAttributesPointFreeHTML,
                .pointFreeHTML
            ]
        ),
        .testTarget(
            name: .htmlElementsPointFreeHTML.tests,
            dependencies: [
                .htmlElementsPointFreeHTML,
                .inlineSnapshotTesting,
                .dependenciesTestSupport,
                .pointFreeHTML,
            ]
        ),
    ]
)

extension String {
    var tests: Self { "\(self) Tests" }
}
