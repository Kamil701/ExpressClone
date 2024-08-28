//
//  PopularRestaraunts.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct PopularRestaurants {
    let imageUrl: String
    let name: String
    let deliveryMinTime: Int
    let deliveryMaxTime: Int
    let deliveryTimeMeasurment: String
    
    func copyWith(
        imageUrl: String? = nil,
        name: String? = nil,
        deliveryMinTime: Int? = nil,
        deliveryMaxTime: Int? = nil,
        deliveryTimeMeasurment: String? = nil
    ) -> PopularRestaurants {
        return PopularRestaurants(
            imageUrl: imageUrl ?? self.imageUrl,
            name: name ?? self.name,
            deliveryMinTime: deliveryMinTime ?? self.deliveryMinTime,
            deliveryMaxTime: deliveryMaxTime ?? self.deliveryMaxTime,
            deliveryTimeMeasurment: deliveryTimeMeasurment ?? self.deliveryTimeMeasurment
        )
    }
}
