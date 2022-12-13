//
//  EcommerceConceptApp.swift
//  EcommerceConcept
//
//  Created by Владимир  on 13.12.22.
//

import SwiftUI

@main
struct EcommerceConceptApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
