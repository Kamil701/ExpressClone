//
//  ViewInstaller.swift
//  ExpressClone
//
//  Created by Kamil Vakhobiv on 27/08/24.
//

import Foundation
import UIKit

protocol ViewInstaller: AnyObject {
    var mainView: UIView { get }
    
    func installSubviews()
    func initSubviews()
    func addSubviews()
    func addSubviewConstraints()
    func localizeText()
    func willLayoutSubview()
    func didLayoutSubviews()
    
}

extension ViewInstaller {
    func installSubviews() {
        initSubviews()
        addSubviews()
        addSubviewConstraints()
    }
    
    func initSubviews() {}
    func addSubviews() {}
    func addSubviewConstraints() {}
    func localizeText() {}
    func willLayoutSubview() {}
    func didLayoutSubviews() {}
    
}
