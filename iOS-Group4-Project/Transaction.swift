//
//  Transaction.swift
//  iOS-Group4-Project
//
//  Created by Van Do on 11/16/16.
//  Copyright © 2016 Van Do. All rights reserved.
//

import Foundation

class Transaction {
    var addTime: Date
    var amount: Double
    var categoryId: Int
    var isIncome: Bool
    var note: String
    
    init(amount: Double, addTime: Date, categoryId: Int, isInCome: Bool, note: String = ""){
        self.amount = amount
        self.addTime = addTime
        self.categoryId = categoryId
        self.isIncome = isInCome
        self.note = note
    }
}
