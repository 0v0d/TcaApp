//
//  ContentView.swift
//  TcaApp
//
//  Created by 0v0 on 2025/03/05.
//

import SwiftUI
import ComposableArchitecture

// アプリのメインビュー
struct ContentView: View {
    let store = Store(
        initialState: CounterFeature.State(),
        reducer: { CounterFeature() }
    )
    
    var body: some View {
        CounterView(store: store)
    }
}

#Preview {
    ContentView()
}
