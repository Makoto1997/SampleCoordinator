//
//  AppCoordinator.swift
//  SampleCoordinator
//
//  Created by Makoto on 2022/04/08.
//

import UIKit
// Coordinatorプロトコルを準拠させる
// AppCoordinatorはアプリの起動を担当するクラス
final class AppCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        
        self.window = window
    }
    
    // プロトコルを準拠させると必ず、プロトコルで作ったメソッドを実装しなければいけない
    // classだけでなく、structやenumにもプロトコルを準拠できる
    func start() {
        // 画面遷移に関するコードをここに書く　ここではアプリ起動時の画面を表示する
        let firstVC = UIStoryboard(name: StoryboardName.first.rawValue, bundle: nil).instantiateInitialViewController() as! FirstViewController
        let navFirstVC = UINavigationController(rootViewController: firstVC)
        window.rootViewController = navFirstVC
        // このメソッドを呼ぶことで、表示中のwindowの上から新たな画面を表示する
        // ここではnavFirstVCを表示
        window.makeKeyAndVisible()
    }
}
