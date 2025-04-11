# HTML Elements Implementation Task

Add implementations to all HTML Element files in the HTMLElements+PointFreeHTML directory that don't already have them.

## Pattern to Follow

Follow the implementation pattern from `<abbr> Abbreviation.swift` and `<address> Contact Address.swift`:

```swift
extension [elementName] {
    public func callAsFunction(
        @HTMLBuilder _ content: () -> some HTML
    ) -> some HTML {
        HTMLElement(tag: Self.tag) { content() }
    }
}
```

## Instructions

1. For each file in Sources/HTMLElements+PointFreeHTML/, check if it already has an implementation
2. If a file already has an implementation, do not modify it
3. If a file is missing the implementation, add it following the pattern above
4. Ensure each implementation uses the correct element name in the extension