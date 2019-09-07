//
//  Song.swift
//  M
//
//  Created by Zach Eriksen on 9/6/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import MediaPlayer

struct Song: Hashable {
    var item: MPMediaItem
    
    var title: String? {
        item.title
    }
    var artist: String? {
        item.artist
    }
    var genre: String? {
        item.genre
    }
    var releaseDate: Date? {
        item.releaseDate
    }
    
    var assetURL: URL? {
        item.assetURL
    }
    
    var albumTitle: String? {
        item.albumTitle
    }
}
