//
//  MainView.swift
//  Netflix
//
//  Created by Chase Allen on 11/9/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        ContentView()
    }
}
