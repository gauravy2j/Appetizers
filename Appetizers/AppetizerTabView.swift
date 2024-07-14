//
//  ContentView.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
