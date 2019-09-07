//
//  MLibrary.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI
import MediaPlayer

struct LoadingModel {
    @Binding var isLoading: Bool
}

class MLibrary {
    var loadingModel: LoadingModel
    
    var artists: [Artist] = []
    var songs: [Song] = [] {
        didSet {
            
        }
    }
    
    init(model: LoadingModel) {
        loadingModel = model
    }
    
    func fetchMedia() {
        loadingModel.isLoading = true
        DispatchQueue.main.async {
            self.artists = MPMediaQuery.artists().items?.map { item in
                return Artist(item: item)
            }.reduce([], { newArray, artist in
                guard let array = newArray else {
                    return [artist]
                }
                guard !array.contains(where: { $0.name == artist.name }) else {
                    return array
                }
                return array + [artist]
            }) ?? []
            self.loadingModel.isLoading = false
        }
        DispatchQueue.main.async {
            self.songs = MPMediaQuery.songs().items?.map { item in
                return Song(item: item)
            } ?? []
        }
    }
}
