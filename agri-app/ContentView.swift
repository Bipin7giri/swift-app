//
//  ContentView.swift
//  agri-app
//
//  Created by Bipin Giri on 21/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash = true

    var body: some View {
        Group {
            if showSplash {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                self.showSplash = false
                            }
                        }
                    }
            } else {
                MainContentView()
            }
        }
    }
}


#Preview {
    ContentView()
}
