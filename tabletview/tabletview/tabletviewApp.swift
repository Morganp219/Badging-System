//
//  tabletviewApp.swift
//  tabletview
//
//  Created by Teaching on 3/5/26.
//

import SwiftUI
import ClerkKit

@main
struct tabletviewApp: App {
//    @State private var clerk = Clerk.shared
    init() {
        let config = loadAppSettings()
        guard let config = config else {
            fatalError("Hello")
        }
        Clerk.configure(publishableKey: config.publishable_key)
//        try? await clerk.
      }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(Clerk.shared)
        }
    }
}
