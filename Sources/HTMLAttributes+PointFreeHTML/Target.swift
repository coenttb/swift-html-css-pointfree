///
/// Target.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 03/04/2025.
///

import PointFreeHTML
import HTMLAttributeTypes

extension HTML {
    /// Add a target attribute to a form to specify where to display the response
    @discardableResult
    package func target(
        _ value: Target?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Target.attribute, value?.description)
    }
}

extension HTML {
    /// Add a target attribute to a form to specify where to display the response
    @discardableResult
    package func target(
        _ value: FormTarget?
    ) -> _HTMLAttributes<Self> {
        self.attribute(FormTarget.attribute, value?.description)
    }
}

extension HTML {
    /// Add a target attribute to a form to specify where to display the response
    @discardableResult
    package func target(
        form value: Target?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Target.attribute, value?.description)
    }
}

extension HTML {
    /// Add a target attribute to specify where to display the linked URL
    @discardableResult
    public func target(
        anchor value: Target?
    ) -> _HTMLAttributes<Self> {
        self.attribute(Target.attribute, value?.description)
    }
    
    /// Open the link in a new tab or window
    @discardableResult
    @HTMLBuilder
    public func openInNewTab(
        withOpener: Bool = false
    ) -> some HTML {
        let result = self.target(anchor: .blank)
        
        if withOpener {
            result
        } else {
            result.rel(.noopener)
        }
    }
    
    /// Open the link in the parent browsing context
    @discardableResult
    public func openInParent() -> _HTMLAttributes<Self> {
        self.target(anchor: .parent)
    }
    
    /// Open the link in the top-level browsing context
    @discardableResult
    public func openInTop() -> _HTMLAttributes<Self> {
        self.target(anchor: .top)
    }
}
