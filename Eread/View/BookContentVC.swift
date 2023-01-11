//
//  BookContentVC.swift
//  Eread
//
//  Created by Manal Alqahtani on 16/06/1444 AH.
//
import SwiftUI

struct BookContentVC: View {
    @EnvironmentObject var appSettings: AppSettings
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image(systemName: "arrow.backward")
                .foregroundColor(Color(hex: "6659E4"))
                .aspectRatio(contentMode: .fit)
        }
    }
    }
    // MARK: - Variables
    var model: Table?
    init(model: Table) {
        self.model = model
    }
    var body: some View {
        return VStack(alignment: .leading, spacing: 1) {
            
            ZStack(alignment: .bottom ) {
                Color(hex: self.appSettings.colors[self.appSettings.colorIndex])
                VStack{
                    ScrollView {
                        VStack(spacing: 20) {
                            Text(model?.title ?? "")
                                .fontWeight(.bold)
                                .font(.custom(self.appSettings.font, size: 24))
                                .padding()
                                .padding(.top, 50)
                                .frame(alignment: .center)
                            ScrollView{
                            Text(model?.content ?? "")
                                .font(.custom(self.appSettings.font, size: 19))
                                .padding(EdgeInsets(top: 30, leading: 20, bottom: 5, trailing: 25))
                        }.frame(height:300)
                        }
                    }
                }
                SettingsView(slide: CGFloat(1)).frame(alignment: .bottom)
            }
        }.statusBar(hidden: true)
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}
struct BookContentVC_Previews: PreviewProvider {
    static var previews: some View {
        let model: Table? = nil
        BookContentVC(model: model ?? Table(title: "", imageURL: "", content: "")).environmentObject(AppSettings())
        
    }
}
