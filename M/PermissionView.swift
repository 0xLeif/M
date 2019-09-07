//
//  PermissionView.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer

struct PermissionView: View {
    @State private var isLoading = false
    @State private var library: MLibrary?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("M needs permission to use your Apple Music library...")
                Spacer()
                Button(action: {
                    self.isLoading = true
                    DispatchQueue.main.async {
                        self.library?.fetchMedia()
                    }
                }) {
                    Text("Give Permission")
                }
                .sheet(isPresented: $isLoading) {
                    Text("Loading...")
                }
                Spacer()
                NavigationLink(destination: ArtistListView(artists: library?.artists ?? [])) {
                    Text("Listen to Music")
                }
            }.onAppear(perform: {
                self.library = MLibrary(model: LoadingModel(isLoading: self.$isLoading))
            })
            .padding()
        }
    }
}

struct PermissionView_Previews: PreviewProvider {
    static var previews: some View {
        PermissionView()
    }
}
