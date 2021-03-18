//
//  TabBarIcon.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

struct TabBarIcon: View {
    
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    init(width: CGFloat, height: CGFloat, systemIconName: String, tabName: String) {
        self.width = width
        self.height = height
        self.systemIconName = systemIconName
        self.tabName = tabName
    }
    
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

//struct TabBarIcon_Previews: PreviewProvider {
//    //static var width: CGFloat geometry
//    static var previews: some View {
//        TabBarIcon(width: CGFloat, height: <#CGFloat#>, systemIconName: <#String#>, tabName: <#String#>)
//    }
//}
