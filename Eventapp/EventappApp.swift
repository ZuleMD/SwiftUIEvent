//
//  EventappApp.swift
//  Eventapp
//
//  Created by orangeodc2 on 25/4/2023.
//

import SwiftUI

@main
struct EventappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
