//
//  test_gptApp.swift
//  test-gpt
//
//  Created by Zane Sabbagh on 10/7/23.
//

import SwiftUI

@main
struct test_gptApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
