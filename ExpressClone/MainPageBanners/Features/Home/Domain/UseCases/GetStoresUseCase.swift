//
//  GetStores.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetStoresUseCase: UseCase<[Stores], EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[Stores], Error>) -> Void) {
        homeRepository.getStores(completion: callback)
    }
}
