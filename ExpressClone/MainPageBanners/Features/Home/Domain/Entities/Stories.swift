//
//  Stories.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation

struct Stories {
    let imageUrl: String
    
    func copyWith(imageUrl: String? = nil) -> Stories {
        return Stories(imageUrl: imageUrl ?? self.imageUrl)
    }
    
    static func stub() -> Stories {
        
    }
}
