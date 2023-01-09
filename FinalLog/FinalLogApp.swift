//
//  FinalLogApp.swift
//  FinalLog
//
//  Created by Maha Saleh Alghamdi on 16/06/1444 AH.
//

import SwiftUI

@main
struct FinalLogApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
