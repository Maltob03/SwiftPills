//
//  ContentView.swift
//  ViewBuilder
//
//  Created by Matteo Altobello on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var index : IndexIndicator
    var index2: IndexIndicator2
    
    var body: some View {
        headerSection
    }
    
    ///If you want to test the index2 var just replace every occurences of
    ///index.type with index2.type2
    
    @ViewBuilder var headerSection : some View {
        switch index.type {
        case .one:
            viewOne
        case .two:
            viewTwo
        case .three:
            viewThree
        }
    }
    
    var viewOne : some View {
        VStack{
            Text("Hello 1")
            HStack {
                Button("Go to 2") {
                    index.type = .two
                }.padding()
                Button("Go to 3") {
                    index.type = .three
                }.padding()
            }.buttonStyle(BorderedButtonStyle())
            .padding()
        }
    }
    
    var viewTwo : some View {
        VStack{
            Text("Hello 2")
            HStack {
                Button("Go to 1") {
                    index.type = .one
                }.padding()
                Button("Go to 3") {
                    index.type = .three
                }.padding()
            }.buttonStyle(BorderedButtonStyle())
            .padding()
        }
    }
    
    var viewThree : some View {
        VStack{
            Text("Hello 3")
            HStack {
                Button("Go to 1") {
                    index.type = .one
                }.padding()
                Button("Go to 2") {
                    index.type = .two
                }.padding()
            }.buttonStyle(BorderedButtonStyle())
            .padding()
        }
    }
}

#Preview {
    ContentView(index: IndexIndicator(type: .one), index2: IndexIndicator2(type2: .one))
}
