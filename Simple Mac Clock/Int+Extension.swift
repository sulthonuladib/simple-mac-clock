//
//  Int+Extension.swift
//  Simple Mac Clock
//
//  Created by Sulthonul Adib on 31/03/20.
//  Copyright © 2020 Sulthonul Adib. All rights reserved.
//

import Foundation

extension Int {
    
    var safeString: String {
        return self >= 10 ? "\(self)" : "0\(self)"
    }
    
}
