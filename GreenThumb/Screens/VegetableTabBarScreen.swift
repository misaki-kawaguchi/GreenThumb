//
//  VegetableTabBarScreen.swift
//  GreenThumb
//
//  Created by 川口美咲 on 2025/05/24.
//

import SwiftUI

struct VegetableTabBarScreen: View {
    var body: some View {
        TabView {
            NavigationStack {
                VegetableListScreen()
            }
            .tabItem {
                Image(systemName: "leaf")
                Text("Vegetables")
            }
            
            NavigationStack {
                Text("MyGardernScreen")
            }
            .tabItem {
                Image(systemName: "house")
                Text("My Gardern")
            }
            
            NavigationStack {
                Text("Pests")
            }
            .tabItem {
                Image(systemName: "ladybug")
                Text("Pests")
            }
        }
    }
}

#Preview {
    VegetableTabBarScreen()
}
