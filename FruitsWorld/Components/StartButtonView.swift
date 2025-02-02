//
//  StartButtonView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }, label: {
            
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        })
        .tint(.white)
        .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 1.25)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
