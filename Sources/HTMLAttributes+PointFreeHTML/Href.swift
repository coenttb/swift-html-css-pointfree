//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Add an href attribute to specify a hyperlink destination
    @discardableResult
    public func href(
        _ value: Href?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Href.attribute, value?.description)
    }

//    /// Add an href attribute with a URL object
//    @discardableResult
//    public func href(
//        _ url: URL?
//    ) -> _HTMLAttributes<Self> {
//        self.attribute(Href.attribute, url.map(Href.init)?.description )
//    }
}
//
//extension HTML {
//    /// Create an email link
//    @discardableResult
//    public func emailLink(
//        _ address: String,
//        subject: String? = nil,
//        body: String? = nil
//    ) -> _HTMLAttributes<Self> {
//        self.href(Href.email(address, subject: subject, body: body))
//    }
//    
//    /// Create a telephone link
//    @discardableResult
//    public func telLink(
//        _ phoneNumber: String
//    ) -> _HTMLAttributes<Self> {
//        self.href(Href.tel(phoneNumber))
//    }
//    
//    /// Create an SMS link
//    @discardableResult
//    public func smsLink(
//        _ phoneNumber: String,
//        body: String? = nil
//    ) -> _HTMLAttributes<Self> {
//        self.href(Href.sms(phoneNumber, body: body))
//    }
//    
//    /// Create a link to a specific fragment (anchor)
//    @discardableResult
//    public func fragmentLink(
//        _ fragmentId: String
//    ) -> _HTMLAttributes<Self> {
//        self.href(Href.anchor(fragmentId))
//    }
//}
