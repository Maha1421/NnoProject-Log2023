//
//  FinalLogApp.swift
//  FinalLog
//
//  Created by Maha Saleh Alghamdi on 16/06/1444 AH.
//

import SwiftUI

@main
struct FinalLogApp: App {
    
    @State private var log = Dailylog.sampleData
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomePage(logs: $log)
               
               
            }
        }
    }
}
