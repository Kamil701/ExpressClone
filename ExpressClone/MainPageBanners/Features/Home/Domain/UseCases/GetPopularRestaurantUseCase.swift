//
//  GetPopularRestaurant.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetPopularRestaurantUseCase: UseCase<[PopularRestaurants], EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[PopularRestaurants], Error>) -> Void) {
        homeRepository.getPopularRestaurants(completion: callback)
    }
}
