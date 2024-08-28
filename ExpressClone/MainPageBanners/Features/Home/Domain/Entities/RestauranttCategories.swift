//
//  RestarauntCategories.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct RestaurantCategories {
    let categories: String
    
    func copyWith(categories: String? = nil) -> RestarauntCategories {
        return RestarauntCategories(categories: categories ?? self.categories)
    }
}
