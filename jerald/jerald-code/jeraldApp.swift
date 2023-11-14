//
//  test_gptApp.swift
//  test-gpt
//
//  Created by Zane Sabbagh on 10/7/23.
//

import SwiftUI

@main
struct jeraldApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Record()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
