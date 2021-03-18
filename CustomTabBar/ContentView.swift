//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Home")
                Spacer()
                HStack {
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "homekit", tabName: "Home")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "heart", tabName: "liked")
                    
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                            .shadow(radius: 4)
                        
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width/7-6, height: geometry.size.width/7-6)
                            .foregroundColor(Color("DarkPurple"))
                    }
                    .offset(y: -geometry.size.height/8/6)
                    
//                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "plus", tabName: "Add")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "waveform", tabName: "Records")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Account")
                }
                .frame(width: geometry.size.width, height: geometry.size.height/8)
                .background(Color("TabBarBackground").shadow(radius: 2))
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct TabBarIcon: View {
//
//    let width, height: CGFloat
//    let systemIconName, tabName: String
//
//    var body: some View {
//        VStack {
//            Image(systemName: systemIconName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: width, height: height)
//                .padding(.top, 10)
//            Text(tabName)
//                .font(.footnote)
//            Spacer()
//        }
//        .padding(.horizontal, -4)
//    }
//}
