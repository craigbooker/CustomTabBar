//
//  TabBarIcon.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

struct TabBarIcon: View {
    
    // MARK: - PROPERTIES
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    // MARK: - INITIALIZER
    init(viewRouter: StateObject<ViewRouter>, assignedPage: Page, width: CGFloat, height: CGFloat, systemIconName: String, tabName: String) {
        _viewRouter = viewRouter
        self.assignedPage = assignedPage
        self.width = width
        self.height = height
        self.systemIconName = systemIconName
        self.tabName = tabName
    }
    
    
    // MARK: - BODY
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
