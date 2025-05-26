//
//  PreviewContainer.swift
//  GreenThumb
//
//  Created by 川口美咲 on 2025/05/24.
//

import Foundation
import SwiftData

let previewContainer: ModelContainer = {
    
    let container = try! ModelContainer(for: Vegetable.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    return container
}()
