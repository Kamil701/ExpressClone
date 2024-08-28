//
//  Service.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation


struct Service {
    let name: String?
    
    static func copyWith(
        name: String? = nil
    ) -> Service {
        Service(name: name ?? name)
    }
}
