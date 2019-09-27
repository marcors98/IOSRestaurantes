//
//  Restaurante.swift
//  Restaurants
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Restaurante {
    var nombre : String?
    var direccion : String?
    var telefono : Int?
    var descripcion : String?
    
    init(nombre: String, direccion: String, telefono: Int, descripcion: String) {
        self.nombre = nombre
        self.direccion = direccion
        self.telefono = telefono
        self.descripcion = descripcion
    }
}
