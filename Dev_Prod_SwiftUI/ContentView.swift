//
//  ContentView.swift
//  Dev_Prod_SwiftUI
//
//  Created by SeongMinK on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
    @State var welcomeTitle: String = ""
    var body: some View {
        Text(welcomeTitle)
            .font(.largeTitle)
            .fontWeight(.bold)
            .onAppear(perform: {
                #if DEBUG
                welcomeTitle = "Debug Mode"
                #else
                welcomeTitle = "Release Mode"
                #endif
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
