//
//  DetallesRestauranteController.swift
//  Restaurants
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestauranteController : UIViewController {
    
    var restaurante : Restaurante?
    
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    
    
    override func viewDidLoad() {
        
        self.title = restaurante!.nombre!
        
        lblDescripcion.text = restaurante!.descripcion!
        lblDireccion.text = restaurante!.direccion!
        lblTelefono.text = ("\restaurante!.telefono!")
        
    }
}
