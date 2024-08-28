//
//  PromotionBannerDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct PromotionBannerDto: Codable {
    let imageUrl: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case imageUrl = "cover"
        case name = "name"
    }
}
