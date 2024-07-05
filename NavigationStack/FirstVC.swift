//
//  FirstVC.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

struct FirstVC: View {
    var body: some View {
        ZStack {
            Color(.red)
            Text("Hello, World!")
        }.ignoresSafeArea()
            
    }
}

#Preview {
    FirstVC()
}
