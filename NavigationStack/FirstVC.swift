//
//  FirstVC.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

struct FirstVC: View {

    let dataList = ["data 1", "data 2", "data 3"]

    var body: some View {
        ZStack {
            Color(.red)
            LazyVStack(spacing: 20) {
                ForEach(dataList, id: \.self) { data in
                    NavigationLink(value: data, label: {
                        Text(data)
                            .bold()
                            .padding(.vertical)
                            .padding(.horizontal, 50)
                            .foregroundStyle(.white)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
                }
            }
        }
        .ignoresSafeArea()
        .navigationDestination(for: String.self, destination: { data in
            NestedVC(title: data)
        })
        .navigationTitle("This the FirstVC")
    }
}

#Preview {
    FirstVC()
}
