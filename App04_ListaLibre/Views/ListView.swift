//
//  ContentView.swift
//  App04_ListaLibre
//
//  Created by user194277 on 12/4/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var albums = AlbumModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView{
            List{
                TextField("Nombre canción", text: $searchText)
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Section(header:
                            HStack{
                                Image(systemName: "music.note.list")
                                Text("El Madrileño")
                            })
                            {
                    ForEach(albums.ElMadrileño.filter{
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { song in
                        NavigationLink(
                            destination: SongView(song: song, cover: "ElMadrileño"),
                            label: {
                                HStack{
                                    Text("\(song.num)")
                                    Text(song.name)
                                        .foregroundColor(song.dark ? .white : .black)
                                }
                        })
                            .listRowBackground(song.colour)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle("Discografía", displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor.white)
            .toolbar(content:  {
                ToolbarItem(placement: .principal, content:{
                    Text("Discografía")
                        .foregroundColor(.white)
                })
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


//To do:
//Cambiar el tipo de letra a los elementos de la lista y a los titulos de las secciones
//Utilizar un icono a la izquierda lightbulb.fill cuando sea isDark == falso, lightbulb cuando isDark == true
//Cambiar el color de cada uno de los renglones con el color correspondiente
