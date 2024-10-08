//
//  ServiceDtoMapper.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

struct ServiceDtoMapper {
    static func toEntity(dto: ServiceCategoryDto) -> Service {
        Service(name: dto.name)
    }
}
