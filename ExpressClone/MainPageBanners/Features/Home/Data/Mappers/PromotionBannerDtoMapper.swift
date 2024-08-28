//
//  PromotionBannerDtoMapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct PromotionBannerDtoMapper {
    static func toEntity(dto: PromotionBannerDto) -> PromotionBanner {
        PromotionBanner(imageUrl: dto.imageUrl, text: dto.name)
    }
}
