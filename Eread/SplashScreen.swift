//
//  SplashScreen.swift
//  SplashScreenApp.swift
//  SplashScreen
// Created by وعد عياد الرويلي on 15/06/1444 AH.
//
//
import SwiftUI

struct SplashScreenView: View {
    
    @EnvironmentObject var appSettings: AppSettings
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Image("l")
                            .resizable()
                            .frame(width: 70,height: 44)
                        Spacer()
                        Image("Image")
                            .resizable()
                            .frame(width: 350, height: 320)
                            .cornerRadius(1)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        //    .font(.system(size: 80))
                        //  .foregroundColor(.red)
                    }
                    VStack{
                        Text("Have You")
                            .font(.custom("Baskerville-Bold", size: 29))
                            .foregroundColor(.black.opacity(0.80))
                            .multilineTextAlignment(.leading)
                        Text( "Read Today?")
                            .font(.custom("Baskerville-Bold", size: 29))               .foregroundColor(.black.opacity(0.80))
                            .multilineTextAlignment(.leading)
                        //                        .padding(.top, 46.0)
                        
                        
                        Text( "Reading gives us someplace" )
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 20)
                        Text( "to go when we have to " )
                            .font(.title3)
                        Text( "stay where we are." )
                            .font(.title3)
                    }
                            .multilineTextAlignment(.leading)
                    .padding([.top, .leading], 44)
                .scaleEffect(size)
              //  .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
                    Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                        
                    }
                    
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView().environmentObject(AppSettings())
    }
}
