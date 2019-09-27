//
//  RestauranteController.swift
//  Restaurants
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "La Leña Restaurant", direccion: "Paraiso #3", telefono: 6321031797, descripcion:"Pizzas a la leña"))
        restaurantes.append(Restaurante(nombre: "Asadero Leo`s", direccion: "Carretera Int ", telefono: 3260895, descripcion:"Pizzas a la leña"))
        
        restaurantes.append(Restaurante(nombre: "Palo Verde", direccion: "Aurora #85", telefono: 6323214498, descripcion:"Pizzas a la leña"))
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return restaurantes.count
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    //Contenido de la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoDetallesRestaurante") {
            let destino = segue.destination as? DetallesRestauranteController
            destino?.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
        }
    }
    
    
}
