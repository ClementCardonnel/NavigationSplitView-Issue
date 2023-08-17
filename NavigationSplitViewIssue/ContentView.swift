//
//  ContentView.swift
//  NavigationSplitViewIssue
//
//  Created by Clément Cardonnel on 17/08/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var column = NavigationSplitViewColumn.sidebar // Both .sidebar and .content don't work.

    var body: some View {
        NavigationSplitView(preferredCompactColumn: $column) {
            Text("Sidebar")
                .font(.title)
                .bold()
                .padding()
                .background(Material.thin)
                .clipShape(RoundedRectangle(cornerRadius: 18))
        } detail: {
            Text("Detail")
                .font(.title)
                .bold()
                .padding()
                .background(Material.thin)
                .clipShape(RoundedRectangle(cornerRadius: 18))
        }
    }
}

#Preview {
    ContentView()
}
