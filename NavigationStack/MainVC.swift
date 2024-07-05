//
//  MainVC.swift
//  NavigationStack
//
//  Created by Gokul P on 05/07/24.
//

import SwiftUI

enum Route: Hashable {
    case FirstVC
    case SecondVC
    case ThirdVC
}

struct MainVC: View {

    @State private var navigationPath = NavigationPath()

    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            // This specifies the navigation logic
            // the navigation path is kind of object where we can append hashable objects
            // As we append we can get it on navigation destination callback
            // From navigation destination call back we have specify which view needs to be show for the current path
            //
            NavigationStack(path: $navigationPath) {
                buttonVStack()
                    .padding()
                    .navigationDestination(for: Route.self, destination: { route in
                        switch route {
                        case .FirstVC:
                            FirstVC()
                        case .SecondVC:
                            SecondVC()
                        case .ThirdVC:
                            ThirdVC()
                        }
                    })
                    .navigationTitle("Navigation Root")
            }
        }
    }

    func buttonVStack() -> some View {
        VStack(spacing: 20) {
            Button(action: {
                navigationPath.append(Route.FirstVC)
            }, label: {
                Text("Show First VC")
                    .bold()
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })

            Button(action: {
                navigationPath.append(Route.SecondVC)
            }, label: {
                Text("Show Second VC")
                    .bold()
                    .padding()
                    .foregroundStyle(.white)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })

            Button(action: {
                navigationPath.append(Route.ThirdVC)
            }, label: {
                Text("Show Third VC")
                    .bold()
                    .padding()
                    .foregroundStyle(.white)
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}

#Preview {
    MainVC()
}
