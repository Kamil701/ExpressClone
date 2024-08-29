//
//  StoresDtoMapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct StoresDtoMapper {
    static func toEntity(dto: StoresDto) -> Stores {
        var content = dto.list
        content.forEach { data in
            let entityData = Stores(imageUrl: data.logo)
        }
    }
}
