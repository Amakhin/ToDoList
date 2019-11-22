//
//  Model.swift
//  ToDoList
//
//  Created by Amakhin Ruslan on 22.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
}

func changeState(at item: Int) -> Bool {
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    
    return ToDoItems[item]["isCompleted"] as! Bool
}

