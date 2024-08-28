//
//  GetRestaurantCatalog.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetRestaurantCatalogUseCase: UseCase<[RestaurantCatalog],EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[RestaurantCatalog], Error>) -> Void) {
        homeRepository.getRestaurantCatalogs(completion: callback)
    }
}
