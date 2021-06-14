//
//  News_App_TestingApp.swift
//  News App Testing
//
//  Created by Sathriyan on 05/06/21.
//

import SwiftUI

@main
struct News_App_TestingApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
          if isOnboarding {
            OnBoardingView()
          } else {
            ContentView()
          }
        }
    }
}
