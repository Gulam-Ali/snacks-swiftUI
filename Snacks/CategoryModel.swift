//
//  CategoryModel.swift
//  Snacks
//
//  Created by Gulam Ali on 12/10/24.
//

import Foundation

struct Category : Identifiable, Hashable{
    let id : UUID = .init()
    let icon : String
    let title : String
}

var categoryList : [Category] = [
    Category(icon: "", title: "All"),
    Category(icon: "image 216", title: "Choco"),
    Category(icon: "Group 1171274701", title: "Chips"),
    Category(icon: "image 217", title: "Toffee")
]

