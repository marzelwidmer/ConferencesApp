//
//  ConferencesAppApp.swift
//  ConferencesApp
//
//  Created by morpheus on 23.10.21.
//
//

import SwiftUI

@main
struct ConferencesAppApp: App {
    init() {
        // Override point for customization after application launch.
        // TODO  Add the -Xlinker -interposable
        // flag in the Other Linker Flags section of the project settings ⌘ ;:
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }

    var body: some Scene {
        WindowGroup {
//            ContentView()
            ConferenceList()
        }
    }
}
