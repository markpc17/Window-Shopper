//
//  Wage.swift
//  window-shopper
//
//  Created by Mark Carruthers on 20/08/2018.
//  Copyright © 2018 Mark Carruthers. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
