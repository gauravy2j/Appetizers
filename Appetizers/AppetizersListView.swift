//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        
        ZStack{
            NavigationView{
                
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.visible)
                    
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
        }

        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    

}

#Preview {
    AppetizersListView()
}
