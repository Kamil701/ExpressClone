//
//  Stores.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct Stores {
    let imageUrl: String
    
    func copyWith(imageUrl: String? = nil) -> Stores {
        return Stores(imageUrl: imageUrl ?? self.imageUrl)
    }
    
    static func stub() -> Stores {
        
    }
}
