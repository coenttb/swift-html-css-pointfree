//
//  File.swift
//  swift-html-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 09/04/2025.
//

import PointFreeHTML

extension String: @retroactive PointFreeHTML.HTML {
  public var body: HTMLText {
    HTMLText(self)
  }
}
