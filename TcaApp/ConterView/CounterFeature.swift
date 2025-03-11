//
//  CounterFeature.swift
//  TcaApp
//
//  Created by 0v0 on 2025/03/11.
//

import ComposableArchitecture

// カウンター機能の定義
struct CounterFeature: Reducer {
    // 状態の定義
    struct State: Equatable {
        var count = 0
    }
    
    // アクションの定義
    enum Action {
        case increment
        case decrement
    }
    
    // リデューサーのボディ
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .increment:
                state.count += 1
                return .none
            case .decrement:
                state.count > 0 ? (state.count -= 1) : ()
                return .none
            }
        }
    }
}
