//
//  AppetizerLIstCell.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack{
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
                .padding()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                .foregroundColor(Color(.label))
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }

        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
