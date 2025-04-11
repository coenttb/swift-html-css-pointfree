# swift-html-css-pointfree

A Swift package that provides a type-safe DSL for HTML and CSS. 

Built upon [coenttb/swift-html-types](https://www.github.com/coenttb/swift-html-types), [coenttb/swift-css-types](https://www.github.com/coenttb/swift-css-types), and rendered by [coenttb/pointfree-html](https://www.github.com/coenttb/pointfree-html).

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

This package is currently in active development and is subject to changes. Features and APIs may change without prior notice until a stable release is available.

## Features

- **Type-safe HTML and DSL**: Write HTML Elements and HTML Attributes with a SwiftUI-like syntax
- **Integrated CSS styling**: Apply CSS styles directly to HTML elements with a SwiftUI-like syntax
- **Comprehensive coverage**: Support for all standard HTML5 Elements and Attributes, and all CSS Properties and Types 

## Examples

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

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-html-css-pointfree", branch: "main")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-html-css-pointfree`
3. Choose the main branch or a specific version

## Integration with Web Frameworks

This package is designed to work seamlessly with Swift web frameworks like Vapor. See [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server) for an example implementation.

## Related Projects

* [swift-html-types](https://www.github.com/coenttb/swift-html-types): A complete Swift domain model of HTML elements and attributes.
* [swift-css-types](https://www.github.com/coenttb/swift-css-types): A complete Swift domain model of CSS properties and types.
* [pointfree-html](https://www.github.com/coenttb/pointfree-html): Swift DSL for rendering type-safe HTML.
* [swift-html](https://www.github.com/coenttb/swift-html): Swift DSL for rendering type-safe HTML and CSS.

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
