//
//  Counter.swift
//  ILikeCats
//
//  Created by Kevin Evans on 20/03/2022.
//

import Foundation

struct Counter {
    var value: Int = 0
    
    mutating func increment() {
        value += 1
    }
}
