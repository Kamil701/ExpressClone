//
//  StoresDro.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct StoresDto: Decodable {
    let list: [List]
    
    enum CodingKeys: String, CodingKey {
        case list = "list"
    }
}

struct List: Decodable {
    let logo: String
    
    enum CodingKeys: String, CodingKey {
        case logo = "logo"
    }
}
