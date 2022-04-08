//
//  FirstCoordinator.swift
//  SampleCoordinator
//
//  Created by Makoto on 2022/04/08.
//

import UIKit

// First -> Secondの画面遷移を担当するクラス
final class FirstCoordinator: Coordinator {
    
    private var firstVC: FirstViewController?
    
    init(firstVC: FirstViewController) {
        
        self.firstVC = firstVC
    }
    
    func start() {
        
        let secondVC = UIStoryboard(name: StoryboardName.second.rawValue, bundle: nil).instantiateInitialViewController() as! SecondViewController
        firstVC?.navigationController?.pushViewController(secondVC, animated: true)
    }
}
