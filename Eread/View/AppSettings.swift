//
//  AppSettings.swift
//  Eread
//
//  Created by Manal Alqahtani on 16/06/1444 AH.
//
import Foundation


class AppSettings: ObservableObject {                        // any change any screen update
    @Published var currentSubMenu = 1     // colour or fonts
    @Published var currentMenu = 1         // what is the current font???
    @Published var font = "Arial"
    @Published var settingMenu = true      //  true or false
    @Published var colorIndex = 1        // what is the current colour????
    
    let colors = ["#FFFFFF","#DBE1F0","#D8D3D6","#EDDB76","#ECD0B2","#B68ADA","#ADF094","#E0A6AA"]
}



