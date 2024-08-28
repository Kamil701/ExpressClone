//
//  StoriesDto.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct StoriesDto: Decodable {
    let list: [ContentInfo]
    
    enum CodingKeys: String, CodingKey {
        case list = "list"
    }
}

struct ContentInfo: Decodable {
    let previewImgUrl: String
    
    enum CodingKeys: String, CodingKey {
        case previewImgUrl = "previewImgUrl"
    }
}
