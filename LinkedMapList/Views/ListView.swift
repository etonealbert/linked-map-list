//
//  ListView.swift
//  LinkedMapList
//
//  Created by Albert Lukmanov on 19/09/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the firest",
        "Sacond",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: Text("Destination") ))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

