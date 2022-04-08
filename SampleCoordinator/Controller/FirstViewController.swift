//
//  FirstViewController.swift
//  SampleCoordinator
//
//  Created by Makoto on 2022/04/07.
//

import UIKit

final class FirstViewController: UIViewController {
    
    private var firstCoordinator: FirstCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction private func next(_ sender: UIButton) {
        
        firstCoordinator = FirstCoordinator(firstVC: self)
        firstCoordinator?.start()
    }
}

