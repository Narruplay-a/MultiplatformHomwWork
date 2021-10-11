//
//  TestMultiApp.swift
//  Shared
//
//  Created by Adel Khaziakhmetov on 11.10.2021.
//

import SwiftUI

@main
struct TestMultiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Routing())
        }
    }
}
