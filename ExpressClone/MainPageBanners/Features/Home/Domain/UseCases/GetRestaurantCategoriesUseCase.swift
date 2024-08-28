//
//  GetRestaurantCategories.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetRestaurantCategoriesUseCase: UseCase<[RestaurantCategories], EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[RestaurantCategories], Error>) -> Void) {
        homeRepository.getRestaurantCategories(completion: callback)
    }
    
}
