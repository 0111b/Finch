//
//  String+DiffFormatter.swift
//  DiffFormatter
//
//  Created by Dan Loman on 7/8/18.
//  Copyright © 2018 DHL. All rights reserved.
//

import Foundation

extension Array where Element == String {

    func sorted(by pattern: String) -> [String] {
        return sorted {
            guard let match1 = matches(pattern: pattern, body: $0).first else {
                return false
            }
            guard let match2 = matches(pattern: pattern, body: $1).first else {
                return false
            }
            return String(range: match1.range, in: $0) > String(range: match2.range, in: $1)
        }
    }
}

extension String {
    init(range: NSRange, in body: String) {
        guard let range = Range(range, in: body) else {
            self = body
            return
        }
        self.init(body[range])
    }
}
