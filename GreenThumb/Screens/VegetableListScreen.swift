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
            
            NavigationLink {
                VegetableDetailScreen(vegetable: vegetable)
            } label: {
                VegetableCellView(vegetable: vegetable)
            }
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
        .navigationTitle("Vegetables")
    }
}

#Preview {
    NavigationStack {
        VegetableListScreen()
    }
}
