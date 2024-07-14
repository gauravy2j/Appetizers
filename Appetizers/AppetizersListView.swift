//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import SwiftUI

struct AppetizersListView: View {
    var body: some View {
        
        NavigationView{
            
            List(MockData.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.visible)
                
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizersListView()
}
