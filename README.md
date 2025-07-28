# swift-html-css-pointfree

⚠️ **This is an integration package. For end-user development, please use [coenttb/swift-html](https://github.com/coenttb/swift-html) instead.**

## Overview

This package serves as an integration layer that combines:
- [swift-html-types](https://github.com/coenttb/swift-html-types) - Type definitions for HTML elements and attributes
- [swift-css-types](https://github.com/coenttb/swift-css-types) - Type definitions for CSS properties and values  
- [pointfree-html](https://github.com/coenttb/pointfree-html) - HTML rendering engine

It provides the foundational PointFree HTML integration that powers the higher-level [swift-html](https://github.com/coenttb/swift-html) package.

## For Developers

**👉 Use [coenttb/swift-html](https://github.com/coenttb/swift-html) for your projects.**

The `swift-html` package provides a complete, developer-friendly API for building type-safe HTML and CSS in Swift with a SwiftUI-like syntax:

```swift
import HTML

let document = HTMLDocument {
  div {
    h1 { "Type-safe HTML" }
      .color(light: .blue, dark: .red)
      .fontSize(.px(24))
    p { "With type-safe CSS!" }
      .marginTop(.px(10))
  }
}
```

## Package Architecture

This integration package consists of several modules:

- **HTMLElements+PointFreeHTML** - PointFree HTML extensions for HTML elements
- **HTMLAttributes+PointFreeHTML** - PointFree HTML extensions for HTML attributes  
- **CSS+PointFreeHTML** - PointFree HTML extensions for CSS properties
- **HTML+CSS+PointFreeHTML** - Combined HTML and CSS functionality

## Installation (Internal Use Only)

This package is typically used as a dependency by other packages in the ecosystem. If you need to use it directly:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-css-pointfree", branch: "main")
]
```

## Related Packages

### For End Users
* **[swift-html](https://www.github.com/coenttb/swift-html)** - **👈 Start here!** Complete Swift DSL for HTML and CSS

### Foundation Packages
* [swift-html-types](https://www.github.com/coenttb/swift-html-types) - HTML type definitions
* [swift-css-types](https://www.github.com/coenttb/swift-css-types) - CSS type definitions
* [pointfree-html](https://www.github.com/coenttb/pointfree-html) - HTML rendering engine

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

## Feedback

If you have suggestions or find issues, please open a GitHub issue. Your feedback helps make this project better for everyone.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Connect on LinkedIn](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.
