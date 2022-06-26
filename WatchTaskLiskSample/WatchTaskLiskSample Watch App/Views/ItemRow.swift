//
//  ItemRow.swift
//  WatchTaskLiskSample Watch App
//
//  Created by Layer on 2022/6/25.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject private var model: ItemListModel
    @Binding var item: ListItem
    @State private var showDetail = false
    var body: some View {
        Button {
            showDetail = true
        } label: {
            Text(item.description)
        }
        .sheet(isPresented: $showDetail) {
            ItemDetail(item: $item)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            showDetail = false
                        }
                    }
                }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .constant(ListItem("Build an app!")))
    }
}
