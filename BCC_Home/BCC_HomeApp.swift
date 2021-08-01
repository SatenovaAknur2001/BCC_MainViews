//
//  BCC_HomeApp.swift
//  BCC_Home
//
//  Created by Акнур on 19.07.2021.
//

import SwiftUI
import Firebase
@main
struct BCC_HomeApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            AppTabNavigation()
        }
    }
}
