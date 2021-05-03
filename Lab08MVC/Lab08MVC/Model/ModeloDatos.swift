//
//  ModeloDatos.swift
//  Lab08MVC
//
//  Created by mbtec22 on 5/02/21.
//

import UIKit

class ModeloDatos {
    func Datos() -> [Listas] {
        var seccionesArray = [Listas]()
        
        let videojuegos = Listas(titulo: "Lista de juegos por jugar", objetos: ["CSGO","Valorant","Half-Life","Apex"])

        seccionesArray.append(videojuegos)
        return seccionesArray
        
    }
}
