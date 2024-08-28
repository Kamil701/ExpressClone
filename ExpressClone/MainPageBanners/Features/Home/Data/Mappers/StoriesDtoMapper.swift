//
//  StoriesDtoMapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct StoriesDtoMapper {
    static func toEntity(dto: StoriesDto) -> Stories {
        var content = dto.list
        content.forEach { data in
            let entityData = Stories(imageUrl: data.previewImgUrl)
        }
    }
}
