//
//  ListItem.swift
//  WatchTaskLiskSample Watch App
//
//  Created by Layer on 2022/6/25.
//

import Foundation

struct ListItem: Identifiable, Hashable {
    let id = UUID()
    var description: String
    var estimatedWork: Double = 1.0
    var creationDate: Date = Date()
    var completionDate: Date?
    
    init(_ description: String) {
        self.description = description
    }
    
    var isComplete: Bool {
        get {
            completionDate != nil
        }
        set {
            if newValue {
                guard completionDate == nil else { return }
                completionDate = Date()
            } else {
                completionDate = nil
            }
        }
    }
}

