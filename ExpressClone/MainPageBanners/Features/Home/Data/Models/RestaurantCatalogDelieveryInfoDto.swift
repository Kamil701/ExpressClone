//
//  RestaurantCatalogDelieveryInfoDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct RestaurantCatalogDelieveryInfoDto: Codable {
    let id: Int
    let delivery: DeliveryModel
    let labelDesign: [LabelDesignModel]?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case delivery = "delivery"
        case labelDesign = "labels"
    }
}

extension RestaurantCatalogDelieveryInfoDto {
    struct DeliveryModel: Codable {
        let time: DelieveryTimeModel
        let price: PriceModel
        
    }

    struct PriceModel: Codable {
        let currency: String
        let range: PriceModelRange
        let promotionlabelInfo: String
        
        enum CodingKeys: String, CodingKey {
            case currency = "currency"
            case range = "range"
            case promotionlabelInfo = "label"
        }
    }

    struct DelieveryTimeModel: Codable {
        let min: Int
        let max: Int
        let average: Int
        let measurement: String
    }

    struct PriceModelRange: Codable {
        let fromStartCost: Int
        let toCost: Int
        
        enum CodingKeys: String, CodingKey {
            case fromStartCost = "from"
            case toCost = "to"
        }
    }

    struct LabelDesignModel: Codable {
        let labelTextColor: String
        let labelBackgroundColor: String
        let type: String
        let labelText: String
        
        enum CodingKeys: String, CodingKey {
            case labelTextColor = "textColor"
            case labelBackgroundColor = "backgroundColor"
            case type = "type"
            case labelText = "text"
        }
    }
}


