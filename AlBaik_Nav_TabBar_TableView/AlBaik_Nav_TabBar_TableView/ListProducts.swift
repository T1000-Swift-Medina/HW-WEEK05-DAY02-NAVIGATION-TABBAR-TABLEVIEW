//
//  ListProducts.swift
//  AlBaik_Nav_TabBar_TableView
//
//  Created by Abdullah Bajaman on 26/10/2021.
//

import Foundation

struct ListProducts{
    var products = [Product]()
    
    mutating func addProduct(newProduct: Product){
        products.append(newProduct)
    }
}
