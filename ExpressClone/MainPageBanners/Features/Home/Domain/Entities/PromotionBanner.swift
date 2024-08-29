//
//  PromotionBanner.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct PromotionBanner: Decodable {
    let imageUrl: String
    let text: String
    
    func copyWith(imageUrl: String? = nil, text: String? = nil) -> PromotionBanner {
        return PromotionBanner(imageUrl: imageUrl ?? self.imageUrl, text: text ?? self.text)
    }
    
    static func stub()  {
//        return PromotionBanner(imageUrl: <#T##String#>, text: <#T##String#>)
    }
    
}
