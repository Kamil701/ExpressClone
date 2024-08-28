//
//  CallBacks.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

typealias CallBack<T> = (T) -> Void
typealias VoidCallBack<T> = (T) -> Void
typealias ResultCallBack<T> = (Result<T, Error>) -> Void
