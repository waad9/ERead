//
//  ElementsView.swift
//  Eread
//
//  Created by Manal Alqahtani on 17/06/1444 AH.
//
//3 Categories view


import SwiftUI

struct ElementsView : View {
    
    @Binding var selectedBtn: Int
    
    let box : ElementsBox
    
    var body: some View {
        VStack {
            Button {
                self.selectedBtn = self.box.id
                
            } label: {
                VStack{
                    Image(box.imageURL)
                    Text(box.title)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                }
            } .frame(width: 109,height: 84)
                .background(self.selectedBtn == self.box.id ? Color("EEEEFF"): Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 29)
                        .stroke(.gray, lineWidth: 1))
                .cornerRadius(29)
        }
    }
    
    
}
