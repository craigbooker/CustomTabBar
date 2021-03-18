//
//  ViewRouter.swift
//  CustomTabBar
//
//  Created by Craig Booker on 3/18/21.
//

import SwiftUI

enum Page {
    case home
    case liked
    case records
    case user
}

class ViewRouter: ObservableObject {
    // MARK: - PROPERTIES
    @Published var currentPage: Page = .home
    
}
