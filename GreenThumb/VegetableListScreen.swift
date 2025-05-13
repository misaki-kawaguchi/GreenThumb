//
//  ContentView.swift
//  GreenThumb
//
//  Created by 川口美咲 on 2025/05/13.
//

import SwiftUI

struct VegetableListScreen: View {
    
    @State private var vegetables: [Vegetable] = []
    
    var body: some View {
        List(vegetables) { vegetable in
            Text(vegetable.name)
        }
        .listStyle(.plain)
        .task {
            do {
                let client = VegatableHTTPClient()
                vegetables = try await client.fetchVegetables()
            } catch {
                print(error.localizedDescription)
            }
        }
        .padding()
    }
}

#Preview {
    VegetableListScreen()
}
