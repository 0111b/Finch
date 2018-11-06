//
//  ArgumentHandler.swift
//  DiffFormatter
//
//  Created by Dan Loman on 11/5/18.
//  Copyright © 2018 DHL. All rights reserved.
//

import Foundation

extension ArgumentRouter {
    typealias RouterArgumentHandling = ArgumentHandling<String>

    struct ArgumentHandling<Argument> {
        var handle: (Context, [Argument]) -> HandleResult
    }
}
