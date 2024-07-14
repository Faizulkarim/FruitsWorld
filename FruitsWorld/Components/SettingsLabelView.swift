//
//  SettingsLabelView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct SettingsLabelView: View {
    @State var labelText : String
    @State var imageLabel : String
    var body: some View {
        
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: imageLabel)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fruits", imageLabel: "info.circle")
        .padding()
}
