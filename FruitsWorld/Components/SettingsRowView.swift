//
//  SettingsRowView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                if let content {
                    Text(content)
                    
                } else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")! )
                    
                     Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                    
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Faizul")
        .padding()
}
