//
//  RestaurantCatalogDtomapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct RestaurantCatalogDtoMapper {
    static func toEntity(dto: RestaurantsCatalogDto) -> RestaurantCatalog {
        let restaurantById = Dictionary(uniqueKeysWithValues: dto.list.map {($0.restarauntID, $0)})
        let restaurantInfo: [RestaurantCatalogDelieveryInfoDto]
        restaurantInfo.forEach { data in
            if let catalogInfo = restaurantById[data.id] {
                var entityData = RestaurantCatalog(
                    name: catalogInfo.name,
                    imageUrl: catalogInfo.cover,
                    id: catalogInfo.restarauntID,
                    averageScore: catalogInfo.reviews.average,
                    price: data.delivery.price.range.toCost,
                    deliveryMinTime: data.delivery.time.min,
                    deliveryMaxTime: data.delivery.time.max,
                    deliveryMeasurment: data.delivery.time.measurement
                )
            }
        }
    }
}
