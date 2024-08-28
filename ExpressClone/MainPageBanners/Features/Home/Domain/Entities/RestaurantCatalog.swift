//
//  RestarauntCatalog.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct RestaurantCatalog {
    let name: String
    let imageUrl: String
    let id: Int
    let averageScore: Float
    let price: Int
    let deliveryMinTime: Int
    let deliveryMaxTime: Int
    let deliveryMeasurment: String
    
    
    func copyWith(
        name: String? = nil,
        imageUrl: String? = nil,
        id: Int? = nil,
        averageScore: Float? = nil,
        price: Int? = nil,
        deliveryMinTime: Int? = nil,
        deliveryMaxTime: Int? = nil,
        deliveryMeasurment: String? = nil
    ) -> RestaurantCatalog {
        return RestaurantCatalog(
            name: name ?? self.name,
            imageUrl: imageUrl ?? self.imageUrl,
            id: id ?? self.id,
            averageScore: averageScore ?? self.averageScore,
            price: price ?? self.price,
            deliveryMinTime: deliveryMinTime ?? self.deliveryMinTime,
            deliveryMaxTime: deliveryMaxTime ?? self.deliveryMaxTime,
            deliveryMeasurment: deliveryMeasurment ?? self.deliveryMeasurment
        )
    }
}
