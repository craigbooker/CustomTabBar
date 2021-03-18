//
//  CustomTabBarApp.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

@main
struct CustomTabBarApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
