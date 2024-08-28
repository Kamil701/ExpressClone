//
//  GetPromotionBanners.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetPromotionBannersUseCase: UseCase<[PromotionBanner], EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[PromotionBanner], Error>) -> Void) {
        homeRepository.getPromotionBanners(completion: callback)
    }
}
