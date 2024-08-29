//
//  AnyHomeAPI.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

protocol AnyHomeAPI {
    func getPromotionBanner(completion: @escaping ResultCallBack<[PromotionBannerDto]>)
    func getStories(completion: @escaping ResultCallBack<[StoriesDto]>)
    func getService(completion: @escaping ResultCallBack<[ServiceCategoryDto]>)
    func getStores(completion: @escaping ResultCallBack<[StoresDto]>)
    func getRestaurantCategories(completion: @escaping ResultCallBack<[RestaurantCategoriesDto]>)
    func getRestaurantCatalog(completion: @escaping ResultCallBack<[RestaurantsCatalogDto]>)
    func getRestaurantCatalogDeliveryInfo(completion: @escaping  ResultCallBack<[RestaurantCatalogDelieveryInfoDto]>)
    func getPopularRestaurant(completion: @escaping ResultCallBack<[PopularRestarauntsDto]>)
    
    
}
