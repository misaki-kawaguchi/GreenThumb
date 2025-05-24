//
//  MyGardenVagetable.swift
//  GreenThumb
//
//  Created by 川口美咲 on 2025/05/24.
//

import Foundation
import SwiftData

@Model
class MyGardenVagetable {
    
    var vegetable: Vegetable
    var plantOption: PlantOption
    var datePlanted: Date = Date()
    
    init(vegetable: Vegetable, plantOption: PlantOption) {
        self.vegetable = vegetable
        self.plantOption = plantOption
    }
}
