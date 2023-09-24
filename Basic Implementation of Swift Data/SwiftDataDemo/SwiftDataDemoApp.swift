//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Matteo Altobello on 10/07/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    
    let container: ModelContainer

        init() {
            do {
                container = try ModelContainer(for: StudentList.self)
            } catch {
                fatalError("Could not initialise the container...")
            }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(container)
        }
    }
}
