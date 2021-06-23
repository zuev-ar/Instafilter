//
//  InstafilterApp.swift
//  Instafilter
//
//  Created by Arkasha Zuev on 23.06.2021.
//

import SwiftUI

@main
struct InstafilterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
