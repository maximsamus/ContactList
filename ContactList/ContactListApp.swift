//
//  ContactListApp.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

@main
struct ContactListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
