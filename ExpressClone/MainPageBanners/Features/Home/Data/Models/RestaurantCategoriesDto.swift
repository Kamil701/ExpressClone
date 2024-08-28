//
//  RestaurantCategoriesDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct RestaurantCategoriesDto: Decodable {
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}
