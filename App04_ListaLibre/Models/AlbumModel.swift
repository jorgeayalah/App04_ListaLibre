//
//  AlbumModel.swift
//  App04_ListaLibre
//
//  Created by user194277 on 12/4/21.
//

import SwiftUI

class AlbumModel: ObservableObject{
    
    @Published var ElMadrileño = [Song]()
    
    init(){
        loadAlbums()
    }
    
    func loadAlbums(){
        ElMadrileño.append(contentsOf: Song.ElMadrileño)
    }
}
