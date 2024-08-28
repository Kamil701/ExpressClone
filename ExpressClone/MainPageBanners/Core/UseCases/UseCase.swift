//
//  UseCase.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 28/08/24.
//

import Foundation

protocol AnyUseCase {
    associatedtype R
    associatedtype P
    
    func call(params: P) -> Result<R, Error>
    func callAsync(params: P, callback: @escaping ResultCallBack<R>)
}

class UseCase<R, P>: AnyUseCase {
    func call(params: P) -> Result<R, any Error> {
        fatalError("Unimplemented")
    }
    
    func callAsync(params: P, callback: @escaping ResultCallBack<R>) {
        fatalError("Unimplemented")
    }
}
