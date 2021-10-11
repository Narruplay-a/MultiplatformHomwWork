//
//  TestMulti_tvOSApp.swift
//  TestMulti_tvOS
//
//  Created by Adel Khaziakhmetov on 11.10.2021.
//

import SwiftUI

@main
struct TestMulti_tvOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Routing())
        }
    }
}
