//
//  NestedVC.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

struct NestedVC: View {
    var title: String
    var body: some View {
        ZStack {
            Color(.systemPink)
            Text(title)
        }
        .ignoresSafeArea()
        .navigationTitle("This the nested VC")
    }
}

#Preview {
    NestedVC(title: "NestedVC")
}
