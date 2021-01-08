//
//  ViewController.swift
//  Coordinator
//
//  Created by NohEunTae on 01/08/2021.
//  Copyright (c) 2021 NohEunTae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            ProductCoordinator(source: self)
                .destination(.detail(id: 123))
                .destination(options: .wrapping(), .modalPresentationStyle(.fullScreen))
                .present()
        }        
    }

}

