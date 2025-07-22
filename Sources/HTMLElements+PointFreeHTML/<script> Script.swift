//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 05/04/2025.
//

import HTMLAttributes_PointFreeHTML
import HTMLElementTypes

extension HTMLElementTypes.Script {
    public func callAsFunction(
        _ script: () -> String = { "" }
    ) -> some HTML {

        let script = script()
        var escaped = ""
        escaped.unicodeScalars.reserveCapacity(script.unicodeScalars.count)

        for index in script.unicodeScalars.indices {
            let scalar = script.unicodeScalars[index]
            if scalar == "<",
               script.unicodeScalars[index...].starts(with: "<!--".unicodeScalars)
                || script.unicodeScalars[index...].starts(with: "<script".unicodeScalars)
                || script.unicodeScalars[index...].starts(with: "</script".unicodeScalars) {
                escaped.unicodeScalars.append(contentsOf: #"\x3C"#.unicodeScalars)
            } else {
                escaped.unicodeScalars.append(scalar)
            }
        }

        return HTMLElement(tag: Self.tag) {
            if script == "" { HTMLEmpty() } else { HTMLRaw(escaped) }
        }
            .src(self.src)
            .`async`(self.`async`)
            .`defer`(self.`defer`)
            .type(self.type)
            .integrity(self.integrity)
            .referrerPolicy(self.referrerpolicy)
            .nomodule(self.nomodule)
            .fetchPriority(self.fetchpriority)
            .blocking(self.blocking)
            .crossorigin(self.crossorigin)
            .nonce(self.nonce)
            .attributionSrc(self.attributionsrc)
    }
}

extension HTMLElementTypes.Script: @retroactive HTML {
    public var body: some HTML {
        Script(
            src: self.src,
            async: self.async,
            defer: self.defer,
            type: self.type,
            integrity: self.integrity,
            referrerpolicy: self.referrerpolicy,
            nomodule: self.nomodule,
            fetchpriority: self.fetchpriority,
            blocking: self.blocking,
            crossorigin: self.crossorigin,
            nonce: self.nonce,
            attributionsrc: self.attributionsrc
        ).callAsFunction {
            ""
        }
    }
}
