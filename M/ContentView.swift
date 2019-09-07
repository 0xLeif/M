//
//  ContentView.swift
//  M
//
//  Created by Zach Eriksen on 9/6/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer

struct ContentView: View {
    @State private var songs: [Song] = []
    
    var body: some View {
        
        NavigationView {
            List(songs, id: \.self) { song in
                L1MusicView(song: song)
            }
            .navigationBarTitle("Songs")
        }
        .onAppear {
            DispatchQueue.main.async {
                self.songs = MPMediaQuery.songs().items?.compactMap(Song.init) ?? []
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
