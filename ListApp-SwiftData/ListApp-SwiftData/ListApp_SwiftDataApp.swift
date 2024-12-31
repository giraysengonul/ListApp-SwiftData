//
//  ListApp_SwiftDataApp.swift
//  ListApp-SwiftData
//
//  Created by Giray Şengönül on 31.12.2024.
//

import SwiftUI
import SwiftData

@main
struct ListApp_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Task.self)
        }
    }
}
