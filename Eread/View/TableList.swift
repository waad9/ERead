//
//  TableList.swift
//  Eread
//
//  Created by Manal Alqahtani on 17/06/1444 AH.
//
import SwiftUI


struct BooksListCategory: View {
    var table: [Table] = []
    
    init(table: [Table]) {
        self.table = table
    }
    
    var body: some View {
        
        List{
            ForEach(table , id: \.title) { table in
                ZStack{
                    NavigationLink("", destination: BookContentVC(model: table))
                        .opacity(0)
                    HStack(spacing: 20) {
                        Image(table.imageURL)
                         //   .scaledToFit()
                          //  .padding(.vertical)
                            //.clipped()
                           .frame(width: 97,height: 97)
                        Text(table.title)
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                    }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth: 1)
                )
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: 0, leading: 10, bottom: 15, trailing: 10))
            }
        }
        .listStyle(.plain)
    }
}
