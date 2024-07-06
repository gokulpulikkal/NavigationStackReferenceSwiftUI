//
//  Router.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import Foundation
import Observation
import SwiftUI

@Observable
class Router: ObservableObject {
    var navigationPath: NavigationPath

    init() {
        self.navigationPath = NavigationPath()
    }

    func navigateTo(_ destination: DestinationViews) {
        navigationPath.append(destination)
    }

    func navigateBack() {
        navigationPath.removeLast()
    }

    func navigateToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }
}
