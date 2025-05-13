//
//  VegetableHTTPClient.swift
//  GreenThumb
//
//  Created by 川口美咲 on 2025/05/13.
//

import Foundation

struct VegatableHTTPClient {
    
    func fetchVegetables() async throws -> [Vegetable] {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://azamsharp.com/vegetables.json")!)
        return try JSONDecoder().decode([Vegetable].self, from: data)
    }
}
