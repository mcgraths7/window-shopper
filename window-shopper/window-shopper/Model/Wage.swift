//
//  Wage.swift
//  window-shopper
//
//  Created by Steven McGrath on 9/5/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
