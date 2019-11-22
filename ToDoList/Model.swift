//
//  Model.swift
//  ToDoList
//
//  Created by Amakhin Ruslan on 22.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import Foundation

var toDoItems: [[String: Any]] = [["Name": "Написать приложение", "isCompleted": false],
                                  ["Name": "Позвонить маме", "isCompleted": true],
                                  ["Name": "Отметить успешно выполненное задание", "isCompleted": false]]

func addItem(nameItem: String, isCompleted: Bool = false) {
    toDoItems.append(["Name": nameItem, "isCompleted": false])
    saveData()
}

func removeItem(at index: Int) {
    toDoItems.remove(at: index)
    saveData()
}

func changeState(at item: Int) -> Bool {
    toDoItems[item]["isCompleted"] = !(toDoItems[item]["isCompleted"] as! Bool)
    
    saveData()
    return toDoItems[item]["isCompleted"] as! Bool
}

func saveData() {
    
}

func loadData() {
    
}
