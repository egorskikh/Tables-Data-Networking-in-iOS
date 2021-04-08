//
//  Todo.swift
//  todo
//
//  Created by Егор Горских on 08.04.2021.
//

import Foundation

struct Todos: Codable {
    let items: Array<Todo>
}

struct Todo: Codable {
    let item: String
    let priority: Int
}
