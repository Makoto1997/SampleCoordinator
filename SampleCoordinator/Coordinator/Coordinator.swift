//
//  Coordinator.swift
//  SampleCoordinator
//
//  Created by Makoto on 2022/04/07.
//

import Foundation

// CoordinatorパターンはVCをスリムにするパターンを指す
// VCはどうしても複雑になりがちなので画面遷移を切り離す事でスッキリする
// つまり、VCで画面遷移はせず、代わりにdelegate等で外に画面遷移を委譲する
// Coordinatorパターンを実装するにあたってまずプロトコルを用意
protocol Coordinator {
    func start()
}
