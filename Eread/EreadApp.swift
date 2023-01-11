//
//  EreadApp.swift
//  Eread
//
//  Created by Manal Alqahtani  on 16/06/1444 AH.
//

import SwiftUI

@main
struct EreadApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView().environmentObject(AppSettings())
            
           //ContentView()
        }
    }
}

