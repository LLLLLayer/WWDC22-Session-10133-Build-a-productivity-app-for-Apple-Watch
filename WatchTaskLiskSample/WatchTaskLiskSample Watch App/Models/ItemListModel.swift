//
//  ItemListModel.swift
//  WatchTaskLiskSample Watch App
//
//  Created by Layer on 2022/6/25.
//

import Foundation

class ItemListModel: NSObject, ObservableObject {
    @Published var items = [ListItem]()
}
