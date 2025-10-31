# swift-html-css-pointfree

[![CI](https://github.com/coenttb/swift-html-css-pointfree/workflows/CI/badge.svg)](https://github.com/coenttb/swift-html-css-pointfree/actions/workflows/ci.yml)
![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Integration layer combining HTML types, CSS types, and PointFree HTML rendering for type-safe web development.

⚠️ **This is an integration package. For end-user development, please use [coenttb/swift-html](https://github.com/coenttb/swift-html) instead.**

## Overview

This package provides the integration layer that bridges:
- [swift-html-types](https://github.com/coenttb/swift-html-types) - Type definitions for HTML elements and attributes
- [swift-css-types](https://github.com/coenttb/swift-css-types) - Type definitions for CSS properties and values
- [pointfree-html](https://github.com/coenttb/pointfree-html) - HTML rendering engine

It serves as the foundational PointFree HTML integration layer for the [swift-html](https://github.com/coenttb/swift-html) package.

## Features

- PointFree HTML extensions for HTML elements (HTMLElements+PointFreeHTML)
- PointFree HTML extensions for HTML attributes (HTMLAttributes+PointFreeHTML)
- PointFree HTML extensions for CSS properties (CSS+PointFreeHTML)
- Combined HTML and CSS functionality (HTML+CSS+PointFreeHTML)
- Type-safe CSS property application on HTML elements
- Media query support for responsive design
- Pseudo-class support for interactive styling

## Installation

### For End Users

**Use [coenttb/swift-html](https://github.com/coenttb/swift-html) instead.** The swift-html package provides a complete, developer-friendly API for building type-safe HTML and CSS in Swift.

### For Package Developers

If you need to use this integration layer directly:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-css-pointfree", from: "0.0.1")
]
```

Then add the appropriate module to your target dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "HTMLCSSPointFreeHTML", package: "swift-html-css-pointfree"),
        // Or specific modules:
        // .product(name: "CSSPointFreeHTML", package: "swift-html-css-pointfree"),
        // .product(name: "HTMLElementsPointFreeHTML", package: "swift-html-css-pointfree"),
        // .product(name: "HTMLAttributesPointFreeHTML", package: "swift-html-css-pointfree"),
    ]
)
```

## Quick Start

```swift
import HTMLCSSPointFreeHTML
import PointFreeHTML

let document = HTMLDocument {
    ContentDivision {
        "Hello World"
    }
    .color(.red)
    .backgroundColor(.hex("F0F0F0"))
}

let html = String(bytes: document.render(), encoding: .utf8)!
```

## Usage Examples

### Applying CSS Properties

```swift
import HTMLCSSPointFreeHTML

// Apply color with type safety
let styledDiv = ContentDivision {
    "Styled content"
}
.color(.blue)
.fontSize(.px(16))
.padding(.rem(1))
```

### Media Queries

```swift
// Responsive styling
let responsiveDiv = ContentDivision {
    "Responsive content"
}
.padding(.rem(1), media: .mobile)
.padding(.rem(2), media: .tablet)
.padding(.rem(3), media: .desktop)
```

### Pseudo-Classes

```swift
// Interactive styling
let interactiveLink = Anchor(href: "/path") {
    "Hover me"
}
.color(.blue)
.color(.red, pseudo: .hover)
```

### Multiple Properties

```swift
let complexElement = ContentDivision {
    Paragraph {
        "Complex styling"
    }
    .color(.named(.darkblue))
    .fontSize(.px(18))
}
.backgroundColor(.hex("FFFFFF"))
.padding(.rem(2))
.margin(.px(10))
```

## Package Architecture

### Modules

- **CSSPointFreeHTML** - CSS property extensions for PointFree HTML elements
- **HTMLElementsPointFreeHTML** - HTML element definitions with PointFree HTML support
- **HTMLAttributesPointFreeHTML** - HTML attribute extensions for PointFree HTML
- **HTMLCSSPointFreeHTML** - Combined HTML+CSS functionality (umbrella module)

### Module Dependencies

```
HTMLCSSPointFreeHTML
├── CSSPointFreeHTML
│   ├── swift-css-types (CSSTypes)
│   └── pointfree-html (PointFreeHTML)
├── HTMLElementsPointFreeHTML
│   ├── swift-html-types (HTMLElementTypes)
│   ├── HTMLAttributesPointFreeHTML
│   └── pointfree-html (PointFreeHTML)
└── HTMLAttributesPointFreeHTML
    ├── swift-html-types (HTMLAttributeTypes)
    └── pointfree-html (PointFreeHTML)
```

## Related Packages

### For End Users
* [swift-html](https://www.github.com/coenttb/swift-html) - The Swift library for domain-accurate and type-safe HTML & CSS.

### Foundation Packages
* [swift-html-types](https://www.github.com/coenttb/swift-html-types) - A Swift package with foundational types for HTML.
* [swift-css-types](https://www.github.com/coenttb/swift-css-types) - A Swift package with foundational types for CSS.
* [pointfree-html](https://www.github.com/coenttb/pointfree-html) - A fork of pointfreeco/swift-html with extended functionality.

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Feedback

If you have suggestions or find issues, please open a GitHub issue.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
>
> [Connect on LinkedIn](https://www.linkedin.com/in/tenthijeboonkkamp)
