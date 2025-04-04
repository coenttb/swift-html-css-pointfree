# swift-html

A Swift DSL for HTML and CSS that streamlines building HTML documents, built upon [coenttb/pointfree-html](https://www.github.com/coenttb/pointfree-html) and integrated with [swift-css](https://www.github.com/coenttb/swift-css).

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

This package is currently in active development and is subject to frequent changes. Features and APIs may change without prior notice until a stable release is available.

## Examples

You can create HTML documents using a declarative, SwiftUI-like syntax, with support for type-safe CSS:

```swift
import HTML

let document = HTMLPreview.modern {
  h1 { "Type-safe HTML" }
    .color(.blue)
    .fontSize(24.px)
  p { "With type-safe CSS!" }
    .margin(top: 10.px, bottom: 10.px)
}
```

For a quick start, use HTMLPreview.modern to give your document a modern look. Alternatively, create a custom implementation by conforming your HTMLDocument struct or enum to the HTMLDocument protocol.

### SwiftUI Preview Example

You can preview your HTML directly using SwiftUI:
```
#if canImport(SwiftUI)
import SwiftUI
import HTML

#Preview {
  HTMLPreview.modern {
    h1 { "Welcome!" }
      .color(.blue)
      .fontSize(24.px)
    p { "You've found our site!" }
      .margin(top: 10.px, bottom: 10.px)
  }
}
#endif
```

## HTML & CSS domain specific language in Swift

This DSL leverages Swift’s type system to make constructing HTML documents and elements safer and more reliable. The APIs enforce proper types, minimizing the use of raw strings and reducing common errors.

The integration with [swift-css](https://www.github.com/coenttb/swift-css) ensures a type-safe system that allows that only valid CSS properties to be applied to HTML elements, helping catch styling mistakes at compile time.

## FAQ

**Can I use this with existing Swift web frameworks like Vapor?** 

Yes, you can! See [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server) for an example implementation. 

## Related projects

* [coenttb-html](https://www.github.com/coenttb/coenttb-html): Builds on [swift-html](https://www.github.com/coenttb/swift-html) and includes additional modules related to html components, html-to-pdf, markdown, and email.
* [swift-css](https://www.github.com/coenttb/swift-css): A Swift DSL for CSS.
* [swift-web](https://www.github.com/coenttb/swift-web): A collection of types and functions for dealing with common web server concerns. Forked from PointFree and updated where necessary.
* [coenttb-web](https://www.github.com/coenttb/swift-web): Builds on [swift-web](https://www.github.com/coenttb/swift-web) and includes additional modules related to web development.
* [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server): The coentt.com website, built with `swift-html`.
* [swift-languages](https://www.github.com/coenttb/swift-languages): A package for for cross platform translations using Swift.

## Installation

You can add `swift-html` to an Xcode project by including it as a package dependency:

Repository URL: https://github.com/coenttb/swift-html

For a Swift Package Manager project, add the dependency in your Package.swift file:
```
dependencies: [
  .package(url: "https://github.com/coenttb/swift-html", branch: "main")
]
```

## Related projects

### The coenttb stack

* [swift-css](https://www.github.com/coenttb/swift-css): A Swift DSL for type-safe CSS.
* [swift-html](https://www.github.com/coenttb/swift-html): A Swift DSL for type-safe HTML & CSS, integrating [swift-css](https://www.github.com/coenttb/swift-css) and [pointfree-html](https://www.github.com/coenttb/pointfree-html).
* [swift-web](https://www.github.com/coenttb/swift-web): Foundational tools for web development in Swift.
* [coenttb-html](https://www.github.com/coenttb/coenttb-html): Builds on [swift-html](https://www.github.com/coenttb/swift-html), and adds functionality for HTML, Markdown, Email, and printing HTML to PDF.
* [coenttb-web](https://www.github.com/coenttb/coenttb-web): Builds on [swift-web](https://www.github.com/coenttb/swift-web), and adds functionality for web development.
* [coenttb-server](https://www.github.com/coenttb/coenttb-server): Build fast, modern, and safe servers that are a joy to write. `coenttb-server` builds on [coenttb-web](https://www.github.com/coenttb/coenttb-web), and adds functionality for server development.
* [coenttb-vapor](https://www.github.com/coenttb/coenttb-server-vapor): `coenttb-server-vapor` builds on [coenttb-server](https://www.github.com/coenttb/coenttb-server), and adds functionality and integrations with Vapor and Fluent.
* [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server): The backend server for coenttb.com, written entirely in Swift and powered by [coenttb-server-vapor](https://www.github.com/coenttb-server-vapor).

### PointFree foundations
* [coenttb/pointfree-html](https://www.github.com/coenttb/pointfree-html): A Swift DSL for type-safe HTML, forked from [pointfreeco/swift-html](https://www.github.com/pointfreeco/swift-html) and updated to the version on [pointfreeco/pointfreeco](https://github.com/pointfreeco/pointfreeco).
* [coenttb/pointfree-web](https://www.github.com/coenttb/pointfree-html): Foundational tools for web development in Swift, forked from  [pointfreeco/swift-web](https://www.github.com/pointfreeco/swift-web).
* [coenttb/pointfree-server](https://www.github.com/coenttb/pointfree-html): Foundational tools for server development in Swift, forked from  [pointfreeco/swift-web](https://www.github.com/pointfreeco/swift-web).

## Feedback is much appreciated!

If you’re working on your own Swift project, feel free to learn, fork, and contribute.

Got thoughts? Found something you love? Something you hate? Let me know! Your feedback helps make this project better for everyone. Open an issue or start a discussion—I’m all ears.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Link on Linkedin](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed by coenttb under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

