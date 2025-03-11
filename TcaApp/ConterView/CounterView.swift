//
//  CounterView.swift
//  TcaApp
//
//  Created by 0v0 on 2025/03/11.
//

import SwiftUI
import ComposableArchitecture

// カウンターのビュー
struct CounterView: View {
    let store: StoreOf<CounterFeature>
    
    var body: some View {
        //observe: は、ViewStoreの状態を監視するためのクロージャです。
        WithViewStore(store, observe: {$0}) { viewStore in
            VStack(spacing: 20) {
                Text("カウント: \(viewStore.count)")
                    .font(.largeTitle)
                
                HStack {
                    Button(action: { viewStore.send(.decrement) }) {
                        Image(systemName: "minus.circle")
                            .font(.system(size: 50))
                    }
                    
                    Button(action: { viewStore.send(.increment) }) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 50))
                    }
                }
            }
        }
    }
}
