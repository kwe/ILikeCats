//
//  CounterViewModel.swift
//  ILikeCats
//
//  Created by Kevin Evans on 20/03/2022.
//

import Foundation
import SwiftUI


class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    func increment() {
        counter.increment()
    }
    
}
