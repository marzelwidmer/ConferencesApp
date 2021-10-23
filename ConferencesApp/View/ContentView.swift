//
//  ContentView.swift
//  ConferencesApp
//
//  Created by morpheus on 23.10.21.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world.")
            .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
    static var previews: some View {
        ContentView()
    }
}
