//
//  NetworkService.swift
//  todo
//
//  Created by Егор Горских on 08.04.2021.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    let URL_BASE = "http://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    let session = URLSession(configuration: .default)
    
    func getTodos() {
        guard let url = URL(string: "\(URL_BASE)" ) else { return }
        
        let task = session.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                debugPrint(error.localizedDescription)
            }
            
            guard
                let data = data,
                let response = response as? HTTPURLResponse
            else {
                debugPrint("Invalid data or response")
                return
            }
            
            do {
                if response.statusCode == 200 {
                    // parse successful result (todos)
                    let items = try JSONDecoder().decode(Todos.self, from: data)
                    print(items)
                    // hundle succes
                } else {
                    // Show error to user
                    let err = try JSONDecoder().decode(APIError.self, from: data)
                    print(err)
                    // hundle error
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
            
            
        }
        task.resume()
    }
    
    func addTodo(todo: Todo) {
        
    }
    
}
