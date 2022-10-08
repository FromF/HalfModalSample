//
//  RootView.swift
//  HalfModalSample
//
//  Created by 藤治仁 on 2022/10/08.
//

import SwiftUI
import ResizableSheet

struct RootView: View {
    var windowScene: UIWindowScene? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        return windowScene
    }

    var resizableSheetCenter: ResizableSheetCenter? {
        windowScene.flatMap(ResizableSheetCenter.resolve(for:))
    }
    
    var body: some View {
        ContentView()
            .environment(\.resizableSheetCenter, resizableSheetCenter)
    }
}
