//
//  PopularRestaurantsDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct PopularRestarauntsDto: Decodable {
    let popularRestLogo: String
    let popularRestName: String
    let popularRestDelieveryInfo: PopularRestDelieveryInfo
    
    enum CodingKeys: String, CodingKey {
        case popularRestLogo = "logo"
        case popularRestName = "name"
        case popularRestDelieveryInfo = "delivery"
        
    }
}

extension PopularRestarauntsDto {
    struct PopularRestDelieveryInfo: Decodable {
        let time: DelieveryTimeInfoModel
    }
    
    struct DelieveryTimeInfoModel: Decodable {
        let minDeliveryInfo: Int
        let maxDeliveryInfo: Int
        let measurement: String
        
        enum CodingKeys: String, CodingKey {
            case minDeliveryInfo = "min"
            case maxDeliveryInfo = "max"
            case measurement = "measurement"
        }
    }
}



