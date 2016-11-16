//
//  Category.swift
//  iOS-Group4-Project
//
//  Created by Van Do on 11/16/16.
//  Copyright © 2016 Van Do. All rights reserved.
//

import Foundation

class Category {
    var name: String
    var isIncome: Bool
    
    init(name: String, isInCome: Bool){
        self.isIncome = isInCome
        self.name = name
    }
}
