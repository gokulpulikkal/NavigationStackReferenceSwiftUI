//
//  MainVCUsingRouter.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

struct MainVCUsingRouter: View {

    @State var router = Router()

    var body: some View {
        ZStack {
            Color(.gray)
            NavigationStack(path: $router.navigationPath) {
                buttonVStack()
                    .navigationDestination(for: DestinationViews.self, destination: { destination in
                        switch destination {
                        case .FirstVC:
                            FirstVCUsingRouter()
                        case .SecondVC:
                            SecondVC()
                        case let .NestedVc(dataForView):
                            NestedVC(title: dataForView)
                        }
                    })
                    .navigationTitle("MainVC With Router")
            }
            // injecting the router to be used in every subviews
            // Basically all the views that gets navigated from this navigation stack view
            .environmentObject(router)
        }
        .ignoresSafeArea()
    }

    func buttonVStack() -> some View {
        VStack(spacing: 20) {
            Button(action: {
                router.navigationPath.append(DestinationViews.FirstVC)
            }, label: {
                Text("Show First VC")
                    .bold()
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })

            Button(action: {
                router.navigationPath.append(DestinationViews.SecondVC)
            }, label: {
                Text("Show Second VC")
                    .bold()
                    .padding()
                    .foregroundStyle(.white)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}

#Preview {
    MainVCUsingRouter()
}
