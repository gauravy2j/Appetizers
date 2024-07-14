//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Gaurav Sharma on 14/07/24.
//

import Foundation

final class NetworkManager{
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    static let appetizerURL = baseURL + "appetizers"
    
    private init(){}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void){
        
    }
    
}
