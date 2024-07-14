//
//  Appetizer.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import Foundation

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "",
                                           calories: 300,
                                           protein: 14,
                                           carbs: 0)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
