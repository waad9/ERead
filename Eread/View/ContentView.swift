//
//  ContentView.swift
//  Eread
// Created by وعد عياد الرويلي on 15/06/1444 AH.
//
//
//



import SwiftUI

var elements : [ElementsBox] = [                   //Localizable
    ElementsBox(title: NSLocalizedString("firsttext", comment: "") , imageURL: "Qoutes", id: 0),
    ElementsBox(title: NSLocalizedString("Secondtext", comment: "") , imageURL: "Articals", id: 1),
   ElementsBox(title: NSLocalizedString("thirdtext", comment: "") , imageURL: "Abstracts", id: 2),
  
]


// Qoutes
var books : [Table] = [
 

    
    Table(title: NSLocalizedString("text1",  comment: ""), imageURL: "1", content:NSLocalizedString("text1c",  comment: "")),
  
    
    Table(title: NSLocalizedString("text2",  comment: ""), imageURL: "2", content:NSLocalizedString("text2c",  comment: "")),
    
    Table(title: NSLocalizedString("text3",  comment: ""), imageURL: "3", content:NSLocalizedString("text3c",  comment: "")),
    Table(title: NSLocalizedString("text4",  comment: ""), imageURL: "4", content:NSLocalizedString("text4c",  comment: "")),
    Table(title: NSLocalizedString("text5",  comment: ""), imageURL: "5", content:NSLocalizedString("text5c",  comment: "")),
    

]


// Artical

var books2 : [Table] = [
    Table(title: NSLocalizedString("text6",  comment: ""), imageURL: "6", content:NSLocalizedString("text6c",  comment: "")),
    Table(title: NSLocalizedString("text7",  comment: ""), imageURL: "7", content:NSLocalizedString("text7c",  comment: "")),
    Table(title: NSLocalizedString("text8",  comment: ""), imageURL: "8", content:NSLocalizedString("text8c",  comment: "")),
    Table(title: NSLocalizedString("text9",  comment: ""), imageURL: "9", content:NSLocalizedString("text9c",  comment: "")),
    
]



//Abstract

var books3 : [Table] = [
    
    Table(title: NSLocalizedString("texta",  comment: ""), imageURL: "11", content:NSLocalizedString("textac",  comment: "")),
//
    Table(title: NSLocalizedString("textb",  comment: ""), imageURL: "12", content:NSLocalizedString("textbc",  comment: "")),
    
    Table(title: NSLocalizedString("textc",  comment: ""), imageURL: "13", content:NSLocalizedString("textcc",  comment: "")),
    
    Table(title: NSLocalizedString("textd",  comment: ""), imageURL: "14", content:NSLocalizedString("textdc",  comment: "")),
    
    Table(title: NSLocalizedString("texte",  comment: ""), imageURL: "15", content:NSLocalizedString("textec",  comment: "")),
    
]



struct ContentView: View {
    @EnvironmentObject var appSettings: AppSettings
    @State var selected = 0
    
    var body: some View {
        NavigationView{
            VStack{
                if selected == 0 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books)
                }//
                if selected == 1 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books2)
                }//
                if selected == 2 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books3)
                }//
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        Image("l")             //logo
                            .resizable()
                            .frame(width: 70,height: 44)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppSettings())
    }
}
