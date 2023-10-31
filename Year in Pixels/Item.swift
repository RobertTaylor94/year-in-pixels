//
//  Item.swift
//  Year in Pixels
//
//  Created by Robert Taylor on 31/10/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
