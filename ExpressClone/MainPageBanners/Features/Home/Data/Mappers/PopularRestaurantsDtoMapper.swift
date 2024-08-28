//
//  PopularRestaurantsDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct PopularRestaurantsDtoMapper {
    
    static func toEntity(dto: PopularRestarauntsDto) -> PopularRestaurants {
        PopularRestaurants(
            imageUrl: dto.popularRestLogo,
            name: dto.popularRestName,
            deliveryMinTime: dto.popularRestDelieveryInfo.time.minDeliveryInfo,
            deliveryMaxTime: dto.popularRestDelieveryInfo.time.maxDeliveryInfo,
            deliveryTimeMeasurment: dto.popularRestDelieveryInfo.time.measurement
        )
    }
}
