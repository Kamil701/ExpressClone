//
//  HomeAPI.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation
import Moya

enum HomeAPIService {
    case getPromotionBanners
    case getStories
    case getStores
    case getRestaurantCategories
    case getRestaurantsCatalog
    case getServicesCategory
    case getRestaurantCatalogsDeliveryInfo
    case updateFavoritesFile(favoriteRestaraunt: Int)
    case getPopularRestaurants
    case getHorizontalCollectionSettings
    
}

extension HomeAPIService: TargetType {
    
    var baseURL: URL {
        switch self {
        case .getPromotionBanners, .getStories, .getStores, .getRestaurantCategories, .getRestaurantsCatalog, .getServicesCategory, .getRestaurantCatalogsDeliveryInfo, .updateFavoritesFile, .getPopularRestaurants, .getHorizontalCollectionSettings:
            return URL(string: "http://localhost:3000")!
        }
    }
    
    var path: String {
        switch self {
        case .getPromotionBanners:
            return "/api/banners"
        case .getStories:
            return "/api/stories"
        case .getStores:
            return "/api/stores"
        case .getRestaurantCategories:
            return "/api/restaraunt_categories"
        case .getRestaurantsCatalog:
            return "/api/restaraunts_catalog"
        case .getServicesCategory:
            return "/api/root_categories"
        case .getRestaurantCatalogsDeliveryInfo:
            return "/api/restaraunts_categories_additional_info"
        case .updateFavoritesFile(let id):
            return "/api/favorite_restaurant"
        case .getPopularRestaurants:
            return "/api/popular_restaraunts"
        case .getHorizontalCollectionSettings:
            return "/api/horizontal_collection_data"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getPromotionBanners, .getStories, .getStores, .getRestaurantCategories, .getRestaurantsCatalog, .getServicesCategory, .getRestaurantCatalogsDeliveryInfo, .getPopularRestaurants, .getHorizontalCollectionSettings:
            return .get
        case .updateFavoritesFile:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .getPromotionBanners, .getStories, .getStores, .getRestaurantCategories, .getRestaurantsCatalog, .getServicesCategory, .getRestaurantCatalogsDeliveryInfo, .getPopularRestaurants, .getHorizontalCollectionSettings:
            return .requestPlain
        case .updateFavoritesFile(let favoriteRestaurant):
            return .requestParameters(parameters: ["id" : favoriteRestaurant], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .updateFavoritesFile:
            return ["Content-Type": "application/json"]
        default:
            return nil
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .getPromotionBanners, .getStories, .getStores, .getRestaurantCategories, .getRestaurantsCatalog, .getServicesCategory, .getRestaurantCatalogsDeliveryInfo, .getPopularRestaurants, .getHorizontalCollectionSettings:
            return URLEncoding.queryString
        case .updateFavoritesFile:
            return JSONEncoding.default
        }
    }
    
}
