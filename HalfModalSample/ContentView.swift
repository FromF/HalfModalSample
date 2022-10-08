//
//  ContentView.swift
//  HalfModalSample
//
//  Created by 藤治仁 on 2022/10/08.
//

import SwiftUI
import ResizableSheet

struct ContentView: View {
    @State var state: ResizableSheetState = .hidden
    
    var body: some View {
        VStack {
            Button("Show sheet") {
                state = .medium
            }
        }
        .resizableSheet($state) { builder in
            builder.content { context in
                Text("text")
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        var windowScene: UIWindowScene? {
            let scenes = UIApplication.shared.connectedScenes
            let windowScene = scenes.first as? UIWindowScene
            return windowScene
        }
        var resizableSheetCenter: ResizableSheetCenter? {
            windowScene.flatMap(ResizableSheetCenter.resolve(for:))
        }
        return ContentView()
            .environment(\.resizableSheetCenter, resizableSheetCenter)
    }
}
