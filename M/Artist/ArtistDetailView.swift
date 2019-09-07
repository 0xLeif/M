//
//  ArtistDetailView.swift
//  M
//
//  Created by Zach Eriksen on 9/7/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import SwiftUI

struct ArtistDetailView: View {
    var artist: Artist
    
    var body: some View {
        Text("Detail for: \(artist.name ?? "...") \(artist.item.title ?? "")")
    }
}

//struct ArtistDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArtistDetailView()
//    }
//}
