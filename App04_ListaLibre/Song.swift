//
//  Album.swift
//  App04_ListaLibre
//
//  Created by user194277 on 12/4/21.
//

import SwiftUI

struct Song: Identifiable{
    var id: UUID = UUID()
    var name: String
    var num: Int
    var artists: [String]
    var colour: Color
    var dark: Bool
}

extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}

extension Song{
    //ElMadrileño
    static let DemasiadasMujeres = Song(name: "Demasiadas Mujeres", num: 1, artists: ["C. Tangana"], colour: Color(0xaa463d), dark: false)
    static let TúMeDejasteDeQuerer = Song(name: "Tú Me Dejaste De Querer", num: 2, artists: ["C. Tangana", "Niño De Elche", "La Húngara"], colour: Color(0xaa463d), dark: false)
    static let ComerteEntera = Song(name: "Comerte Entera", num: 3, artists: ["C. Tangana", "Toquinho"], colour: Color(0xaa463d), dark: false)
    static let NuncaEstoy = Song(name: "Nunca Estoy", num: 4, artists: ["C. Tangana"], colour: Color(0xaa463d), dark: false)
    static let PártemeLaCara = Song(name: "Párteme La Cara", num: 5, artists: ["C. Tangana", "Ed Maverick"], colour: Color(0xaa463d), dark: false)
    static let Ingobernable = Song(name: "Ingobernable", num: 6, artists: ["C. Tangana", "Grispy Kings"], colour: Color(0xaa463d), dark: false)
    static let Nominao = Song(name: "Nominao", num: 7, artists: ["C. Tangana", "Jorge Drexler"], colour: Color(0xaa463d), dark: false)
    static let UnVenenoGMix = Song(name: "Un Veneno (G Mix)", num: 8, artists: ["C. Tangana", "José Feliciano"], colour: Color(0xaa463d), dark: false)
    static let TeOlvidaste = Song(name: "Te Olvidaste", num: 9, artists: ["C. Tangana", "Omar Apollo"], colour: Color(0xaa463d), dark: false)
    static let MuriendoDeEnvidia = Song(name: "Muriendo De Envidia", num: 10, artists: ["C. Tangana", "Eliades Ochoa"], colour: Color(0xaa463d), dark: false)
    static let Cambia = Song(name: "Cambia!", num: 11, artists: ["C. Tangana", "Carín León", "Adriel Favela"], colour: Color(0xaa463d), dark: false)
    static let CuándoOlvidaré = Song(name: "Cuándo Olvidaré", num: 12, artists: ["C. Tangana", "Pepe Blanco"], colour: Color(0xaa463d), dark: false)
    static let LosTontos = Song(name: "Los Tontos", num: 13, artists: ["C. Tangana", "Kiko Veneno"], colour: Color(0xaa463d), dark: false)
    static let HongKong = Song(name: "Hong Kong", num: 14, artists: ["C. Tangana", "Andrés Calamaro"], colour: Color(0xaa463d), dark: false)
    
    
    static let ElMadrileño = [
        DemasiadasMujeres, TúMeDejasteDeQuerer, ComerteEntera, NuncaEstoy, PártemeLaCara, Ingobernable, Nominao, UnVenenoGMix, TeOlvidaste, MuriendoDeEnvidia, Cambia, CuándoOlvidaré, LosTontos, HongKong
    ]
}
