//
//  ProductModel.swift
//  Snacks
//
//  Created by Gulam Ali on 13/10/24.
//

import Foundation

struct Product : Identifiable, Hashable {
    let id : UUID = .init()
    let title : String
    let category : String
    let image : String
    let price : Int
    let color : String
}



var AllProducts = [Product(title: "Good Source", category: "Chocolates", image: "image 44", price: 8, color: "FFEBED"),
                     Product(title: "Unreal Muffins", category: "Chocolates", image: "image 45", price: 5, color: "F5FFB1"),
                     Product(title: "Perfact Snacks", category: "Chocolates", image: "image 46", price: 10, color: "ECE1FF"),
                     Product(title: "Smiths Chips", category: "Chips", image: "Rectangle", price: 12, color: "FFEAC2"),
                   Product(title: "Good Source", category: "Chocolates", image: "image 44", price: 8, color: "FFEBED"),
                                        Product(title: "Unreal Muffins", category: "Chocolates", image: "image 45", price: 5, color: "F5FFB1"),
                                        Product(title: "Perfact Snacks", category: "Chocolates", image: "image 46", price: 10, color: "ECE1FF"),
                                        Product(title: "Smiths Chips", category: "Chips", image: "Rectangle", price: 12, color: "FFEAC2")]
