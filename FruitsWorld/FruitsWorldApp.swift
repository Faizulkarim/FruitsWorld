//
//  FruitsWorldApp.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 13/7/24.
//

import SwiftUI

@main
struct FruitsWorldApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                HomeView()
            }
           
        }
    }
}
