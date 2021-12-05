//
//  AlbumView.swift
//  App04_ListaLibre
//
//  Created by user194277 on 12/4/21.
//

import SwiftUI

struct SongView: View {
    var Album: Colour
    var pallete: String
    
    var body: some View {
        
        ZStack{
            colour.colour
            VStack(spacing: 20){
                Text(colour.name)
                    .foregroundColor(colour.dark ? .white : .black)
                Text(pallete)
                    .foregroundColor(colour.dark ? .white : .black)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("Color", displayMode: .inline)
        .navigationBarColor(UIColor(.black), UIColor.white)
        .toolbar(content:  {
            ToolbarItem(placement: .principal, content:{
                Text(colour.name)
                    .foregroundColor(.white)
            })
        })
        
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        SongView()
    }
}
