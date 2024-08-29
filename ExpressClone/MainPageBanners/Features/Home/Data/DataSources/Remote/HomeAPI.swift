//
//  HomeAPI.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 29/08/24.
//

import Foundation
import Moya

class HomeAPI: AnyHomeAPI {
    
    private let provider = MoyaProvider<HomeAPIService>(plugins: [NetworkLoggerPlugin()])
    
    func getPromotionBanner(completion: @escaping ResultCallBack<[PromotionBannerDto]>) {
        provider.request(.getPromotionBanners) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([PromotionBannerDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getStories(completion: @escaping ResultCallBack<[StoriesDto]>) {
        provider.request(.getStories) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([StoriesDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getService(completion: @escaping ResultCallBack<[ServiceCategoryDto]>) {
        provider.request(.getServicesCategory) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([ServiceCategoryDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getStores(completion: @escaping ResultCallBack<[StoresDto]>) {
        provider.request(.getStores) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([StoresDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getRestaurantCategories(completion: @escaping ResultCallBack<[RestaurantCategoriesDto]>) {
        provider.request(.getRestaurantCategories) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([RestaurantCategoriesDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getRestaurantCatalog(completion: @escaping ResultCallBack<[RestaurantsCatalogDto]>) {
        provider.request(.getRestaurantsCatalog) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([RestaurantsCatalogDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getRestaurantCatalogDeliveryInfo(completion: @escaping ResultCallBack<[RestaurantCatalogDelieveryInfoDto]>) {
        provider.request(.getRestaurantCatalogsDeliveryInfo) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([RestaurantCatalogDelieveryInfoDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getPopularRestaurant(completion: @escaping ResultCallBack<[PopularRestarauntsDto]>) {
        provider.request(.getPopularRestaurants) { result in
            switch result {
            case .success(let response):
                do {
                    let answer = try JSONDecoder().decode([PopularRestarauntsDto].self, from: response.data)
                    completion(.success(answer))
                } catch let error {
                    print(error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
