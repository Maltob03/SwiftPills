//
//  ViewBuilderApp.swift
//  ViewBuilder
//
//  Created by Matteo Altobello on 23/09/23.
//

import SwiftUI

@main
struct ViewBuilderApp: App {
    @StateObject var startingIndex = IndexIndicator(type: .one)
    @State var startingIndex2 = IndexIndicator(type: .one)
    var body: some Scene {
        WindowGroup {
            ContentView(index: startingIndex, index2: IndexIndicator2(type2: .one))
        }
    }
}
