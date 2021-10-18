//
//  TestMultiApp.swift
//  WatchOS WatchKit Extension
//
//  Created by Adel Khaziakhmetov on 18.10.2021.
//

import SwiftUI

@main
struct TestMultiApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView().environmentObject(Routing())
            }
        }
    }
}
