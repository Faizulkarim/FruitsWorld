//
//  FruitsDetailsView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct FruitsDetailsView: View {
    var fruit : FruitModel
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView(.vertical) {
                   FruitHeaderView(fruit: fruit)
                }
                .ignoresSafeArea(edges: .top)
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    FruitsDetailsView(fruit: fruitsData[2])
}
