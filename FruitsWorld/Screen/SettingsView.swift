//
//  SettingsView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", imageLabel: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10, content: {
                           Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 9, bottomLeading: 9, bottomTrailing: 9, topTrailing: 9)))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    }
                    GroupBox(label: SettingsLabelView(labelText: "Customization", imageLabel: "paintbrush")) {
                        
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.green)
                            }else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", imageLabel: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Faizul")
                        
                        SettingsRowView(name: "Designer", content: "karim")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 17.5 ")
                        
                        SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "https://github.com/Faizulkarim")
                        
                        SettingsRowView(name: "LinkedIn", linkLabel: "@faizulkarim", linkDestination: "www.linkedin.com")
                        
                        SettingsRowView(name: "Version", content: "1.0")
                    }
                }
                
            }
            .navigationTitle("Settings")
            .toolbar() {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        self.dismiss()
                    }, label: {
                        Image( systemName : "xmark")
                    })
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
