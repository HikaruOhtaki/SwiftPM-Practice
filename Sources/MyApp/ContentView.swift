//
//  ContentView.swift
//  Staging
//
//  Created by ohtaki hikaru on 2022/01/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Image(uiImage: R.image.building()!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
