//
//  Extensions.swift
//
//  Created by Михаил Медведев on 25.12.2017.
//  Copyright © 2017 Михаил Медведев. All rights reserved.
//

import Foundation

// SHUFFLE:
public func random(_ n: Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
}

extension Array {
    public mutating func shuffle() {
        var temp = [Element]()
        while !isEmpty {
            let i = random(count)
            let obj = remove(at: i)
            temp.append(obj)
        }
        self = temp
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
    
}


