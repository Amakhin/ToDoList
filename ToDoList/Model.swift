//
//  Model.swift
//  ToDoList
//
//  Created by Amakhin Ruslan on 22.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import Foundation

var toDoItems: [String] = ["Позвонить маме", "Написать приложение"]

func addItem(nameItem: String) {
    toDoItems.append(nameItem)
    saveData()
}

func removeItem(at index: Int) {
    toDoItems.remove(at: index)
    saveData()
}

func saveData() {
    
}

func loadData() {
    
}
