//
//  AlbumView.swift
//  App04_ListaLibre
//
//  Created by user194277 on 12/4/21.
//

import SwiftUI

struct SongView: View {
    var song: Song
    var cover: String
    
    var body: some View {
        
        ZStack{
            song.colour
            VStack(spacing: 20){
                Image("coverElMadri")
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                HStack{
                    Text("\(song.num).")
                        .foregroundColor(song.dark ? .white : .black)
                    Text(song.name)
                        .foregroundColor(song.dark ? .white : .black)
                }
                HStack{
                    ForEach(song.artists, id: \.self){ artist in
                        Text(artist)
                            .foregroundColor(song.dark ? .white : .black)
                    }
                }
                Text(cover)
                    .foregroundColor(song.dark ? .white : .black)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("Song", displayMode: .inline)
        .navigationBarColor(UIColor(.black), UIColor.white)
        .toolbar(content:  {
            ToolbarItem(placement: .principal, content:{
                Text(song.name)
                    .foregroundColor(.white)
            })
        })
        
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: Song(name: "NuncaEstoy", num: 1, artists: ["C.Tangana"], colour: Color.red, dark: false), cover: "ElMadrilenio")
    }
}
