//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    @State var showPopUp = false
    
    @State var isShowingNewPostView = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Home")
                Spacer()
                
                // MARK: - TABBAR
                ZStack {
                    if showPopUp {
                        PlusMenu(widthAndHeight: geometry.size.width/7)
                            .offset(y: -geometry.size.height/6)
                    }
                    HStack {
                        TabBarIcon(viewRouter: _viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "homekit", tabName: "Home")
                        TabBarIcon(viewRouter: _viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "heart", tabName: "liked")
                        
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
                                .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                        }
                        .offset(y: -geometry.size.height/8/6)
                        .onTapGesture {
                            withAnimation {
                                showPopUp.toggle()
                            }
                        }
    //                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "plus", tabName: "Add")
                        TabBarIcon(viewRouter: _viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "waveform", tabName: "Records")
                        TabBarIcon(viewRouter: _viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Account")
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

struct PlusMenu: View {
    
    // MARK: - PROPERTIES
    let widthAndHeight: CGFloat
    
    var body: some View {
        HStack(spacing: 50) {
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkPurple"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "record.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkPurple"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "folder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
        }
        .transition(.scale)
    }
}

struct TabBarIcon1: View {
 //MARK: - PROPERTIES
@StateObject var viewRouter: ViewRouter
let assignedPage: Page

let width, height: CGFloat
let systemIconName, tabName: String

    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
    }
}
