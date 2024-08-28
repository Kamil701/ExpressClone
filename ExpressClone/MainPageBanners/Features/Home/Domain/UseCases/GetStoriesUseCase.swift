//
//  GetStories.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

class GetStoriesUseCase: UseCase<[Stories], EmptyParams> {
    
    let homeRepository: AnyHomeRepository
    
    init(repository: AnyHomeRepository) {
        homeRepository = repository
    }
    
    override func callAsync(params: EmptyParams, callback: @escaping (Result<[Stories], Error>) -> Void) {
        homeRepository.getStories(completion: callback)
    }
}
