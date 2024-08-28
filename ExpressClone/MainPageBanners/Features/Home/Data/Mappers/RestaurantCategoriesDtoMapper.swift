//
//  RestaurantCategoriesDtoMapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct RestaurantCategoriesDtoMapper {
    static func toEntity(dto: RestaurantCategoriesDto) -> RestaurantCategories {
        RestaurantCategories(categories: dto.name)
    }
}
