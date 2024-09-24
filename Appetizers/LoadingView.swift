//
//  LoadingView.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 24/09/24.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
        
    
}


struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
            
        }
    }
}
