// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let html: Self = "HTML"
    static let htmlAttributesPointFreeHTML: Self = "HTML Attributes+PointFreeHTML"
    static let htmlElementsPointFreeHTML: Self = "HTML Elements+PointFreeHTML"
}

extension Target.Dependency {
    static var html: Self { .target(name: .html) }
    static var htmlAttributesPointFreeHTML: Self { .target(name: .htmlAttributesPointFreeHTML) }
    static var htmlElementsPointFreeHTML: Self { .target(name: .htmlElementsPointFreeHTML) }
}

extension Target.Dependency {
    static var htmlDomainModel: Self { .product(name: "HTML Domain Model", package: "swift-html") }
    static var css: Self { .product(name: "CSS", package: "swift-css") }
    static var htmlCss: Self { .product(name: "HTML+CSS", package: "swift-html-css") }
    static var pointFreeHTML: Self { .product(name: "PointFreeHTML", package: "pointfree-html") }
    static var inlineSnapshotTesting: Self { .product(name: "InlineSnapshotTesting", package: "swift-snapshot-testing") }
    static var dependenciesTestSupport: Self { .product(name: "DependenciesTestSupport", package: "swift-dependencies") }
}

let package = Package(
    name: "swift-html-pointfree",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .watchOS(.v10),
        .macCatalyst(.v17),
      ],
    products: [
        .library(name: .html, targets: [.html]),
        .library(name: .htmlAttributesPointFreeHTML, targets: [.htmlAttributesPointFreeHTML]),
        .library(name: .htmlElementsPointFreeHTML, targets: [.htmlElementsPointFreeHTML]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-html.git", branch: "mdn-css-types-properties"),
        .package(url: "https://github.com/coenttb/swift-css.git", branch: "mdn-types-properties"),
        .package(url: "https://github.com/coenttb/swift-html-css.git", branch: "main"),
        .package(url: "https://github.com/coenttb/pointfree-html.git", branch: "main"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.18.3"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies.git", branch: "1.9.0"),
    ],
    targets: [
        .target(
            name: .html,
            dependencies: [
                .css,
                .pointFreeHTML,
                .htmlAttributesPointFreeHTML,
                .htmlElementsPointFreeHTML,
                .htmlCss
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
            name: .htmlAttributesPointFreeHTML,
            dependencies: [
                .htmlDomainModel,
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
                .htmlDomainModel,
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
