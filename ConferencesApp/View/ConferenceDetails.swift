//
//  ConferenceList.swift
//  ConferencesApp
//
//  Created by morpheus on 23.10.21.
//
//

import SwiftUI

struct ConferenceDetails: View {
    var conference: Conference

    var body: some View {
        VStack(alignment: .leading) {
            Text(conference.location).padding(.bottom)
            Text(conference.textDates()).padding(.bottom)
            LinkButton(link: conference.link)
        }.padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .navigationBarTitle(conference.name)
    }
}

class ConferenceDetails_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceDetails(conference: Conference())
    }

    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ConferenceDetails(conference: Conference()))
    }
    #endif
    
}
