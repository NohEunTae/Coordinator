//
//  ProductCoordinator.swift
//  Coordinator_Example
//
//  Created by NohEunTae on 2021/01/08.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import Coordinator

final class ProductCoordinator: CoordinatorProtocol {
    
    weak var source: UIViewController?
    var destination: UIViewController?
    
    init(source: UIViewController) {
        self.source = source        
    }
    
    enum DestinationWrapper: DestinationRepresentable {
        case detail(id: Int)
        case list
        
        var destination: UIViewController? {
            switch self {
            case .detail(let id):
                return detailViewController(id)
            case .list:
                return listViewController()
            }
        }
    }
    
}

private extension ProductCoordinator.DestinationWrapper {
    
    func detailViewController(_ id: Int) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        return vc
    }
    
    func listViewController() -> UIViewController {
        return .init()
    }
}
