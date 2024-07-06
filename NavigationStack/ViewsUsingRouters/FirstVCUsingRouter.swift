//
//  FirstVCUsingRouter.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

struct FirstVCUsingRouter: View {
    /// Injected router from parent
    @EnvironmentObject var router: Router

    let dataList = ["data 1", "data 2", "data 3"]

    var body: some View {
        ZStack {
            Color(.red)
            VStack(spacing: 30) {
                LazyVStack(spacing: 20) {
                    ForEach(dataList, id: \.self) { data in
                        Button(action: {
                            router.navigateTo(.NestedVc(dataForView: data))
                        }, label: {
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
                Button(action: {
                    router.navigateBack()
                }, label: {
                    Text("Extra Back Button")
                        .bold()
                        .padding(.vertical)
                        .padding(.horizontal, 50)
                        .foregroundStyle(.white)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
        }
        .ignoresSafeArea()
        .navigationTitle("This the FirstVC")
    }
}

#Preview {
    FirstVCUsingRouter()
}
