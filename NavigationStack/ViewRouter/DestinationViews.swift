//
//  DestinationViews.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import Foundation

enum DestinationViews: Codable, Hashable{
    case FirstVC
    case SecondVC
    case NestedVc(dataForView: String)
}
