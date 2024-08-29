//
//  HomeRepository.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation
import Moya

class HomeRepository: AnyHomeRepository {
    
    let api: AnyHomeAPI
    
    init(api: AnyHomeAPI) {
        self.api = api
    }
    
    func getPromotionBanners(completion: @escaping ResultCallBack<[PromotionBanner]>) {
        api.getPromotionBanner { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(PromotionBannerDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getStories(completion: @escaping ResultCallBack<[Stories]>) {
        api.getStories { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(StoriesDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getStores(completion: @escaping ResultCallBack<[Stores]>) {
        api.getStores { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(StoresDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getServicesCategories(completion: @escaping ResultCallBack<[Service]>) {
        api.getService { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(ServiceDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getRestaurantCategories(completion: @escaping ResultCallBack<[RestaurantCategories]>) {
        api.getRestaurantCategories { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(RestaurantCategoriesDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getRestaurantCatalogs(completion: @escaping ResultCallBack<[RestaurantCatalog]>) {
        api.getRestaurantCatalog { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(RestaurantCatalogDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getPopularRestaurants(completion: @escaping ResultCallBack<[PopularRestaurants]>) {
        api.getPopularRestaurant { result in
            switch result {
            case .success(let dtos):
                completion(.success(dtos.map(PopularRestaurantsDtoMapper.toEntity(dto:))))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
