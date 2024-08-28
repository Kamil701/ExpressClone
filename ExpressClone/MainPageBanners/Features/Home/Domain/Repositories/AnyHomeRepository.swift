//
//  AnyHomeRepository.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

protocol AnyHomeRepository {
    func getPromotionBanners(comletion: @escaping ResultCallBack<[PromotionBanner]>)
    func getStories(completion: @escaping ResultCallBack<[Stories]>)
    func getStores(completion: @escaping ResultCallBack<[Stores]>)
    func getRestaurantCategories(completion: @escaping ResultCallBack<[RestaurantCategories]>)
    func getRestaurantCatalogs(completion: @escaping ResultCallBack<[RestaurantCatalog]>)
    func getPopularRestaurants(completion: @escaping ResultCallBack<[PopularRestaurants]>)
}
