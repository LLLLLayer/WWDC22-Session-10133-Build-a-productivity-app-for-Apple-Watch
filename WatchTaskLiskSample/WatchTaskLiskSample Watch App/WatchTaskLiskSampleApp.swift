//
//  WatchTaskLiskSampleApp.swift
//  WatchTaskLiskSample Watch App
//
//  Created by Layer on 2022/6/24.
//

import SwiftUI

@main
struct WatchTaskLiskSample_Watch_AppApp: App {
    @StateObject var itemListModel = ItemListModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itemListModel)
        }
    }
}
