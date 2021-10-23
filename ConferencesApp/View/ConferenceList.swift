//
//  ConferenceList.swift
//  ConferencesApp
//
//  Created by morpheus on 23.10.21.
//
//

import SwiftUI

struct ConferenceList: View {
    var body: some View {
        NavigationView {
            List(conferencesData) { conference in
                NavigationLink(destination: ConferenceDetails(conference: conference)) {
                    VStack(alignment: .leading) {
                        Text(conference.name).font(.headline)
                        Text(conference.location).font(.subheadline)
                    }
                }
            }.navigationBarTitle("Conferences")
        }
    }
}
struct LinkButton: View {
    var link = ""
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: self.link)!)
        }) {
            Text("Go to official website")
        }
    }
}

class ConferenceList_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceList()
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ConferenceList())
    }
    #endif
    
}
