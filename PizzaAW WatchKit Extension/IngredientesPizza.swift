//
//  IngredientesPizza.swift
//  PizzaAW
//
//  Created by liliana martinez on 20/03/16.
//  Copyright © 2016 liliana martinez. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesPizza: WKInterfaceController {
    
    var resultado:[String]?
    
    var ingredientes:[String] = []

    
    @IBOutlet var btnSiguiente: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        resultado = context as? [String]
        if let contenidoAntes = resultado {
            print("elegidos:")
            for index in contenidoAntes {
                print(index)
            }
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func jamon(value: Bool) {
        if(value){
            ingredientes.append("Jamon")
            resultado!.append("Jamon")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Jamon"}
            resultado! = resultado!.filter(){ $0 != "Jamon"}
        }
        habilitarBoton()
    }
    
    @IBAction func pepperoni(value: Bool) {
        if(value){
            ingredientes.append("Pepperoni")
            resultado!.append("Pepperoni")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Pepperoni"}
            resultado! = resultado!.filter(){ $0 != "Pepperoni"}
        }
        habilitarBoton()
    }
    
    @IBAction func pavo(value: Bool) {
        if(value){
            ingredientes.append("Pavo")
            resultado!.append("Pavo")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Pavo"}
            resultado! = resultado!.filter(){ $0 != "Pavo"}
        }
        habilitarBoton()
    }
    
    @IBAction func salchicha(value: Bool) {
        if(value){
            ingredientes.append("Salchicha")
            resultado!.append("Salchicha")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Salchicha"}
            resultado! = resultado!.filter(){ $0 != "Salchicha"}
        }
        habilitarBoton()
    }
    
    @IBAction func aceitunas(value: Bool) {
        if(value){
            ingredientes.append("Aceituna")
            resultado!.append("Aceituna")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Aceituna"}
            resultado! = resultado!.filter(){ $0 != "Aceituna"}
        }
        habilitarBoton()
    }
    
    @IBAction func piña(value: Bool) {
        if(value){
            ingredientes.append("Piña")
            resultado!.append("Piña")
        }else{
            ingredientes = ingredientes.filter(){ $0 != "Piña"}
            resultado! = resultado!.filter(){ $0 != "Piña"}
        }
        habilitarBoton()
    }
    
    @IBAction func cebolla(value: Bool) {
        if(value){
            resultado!.append("Cebolla")
            ingredientes.append("Cebolla")
        }else{
            resultado! = resultado!.filter(){ $0 != "Cebolla"}
            ingredientes = ingredientes.filter(){ $0 != "Cebolla"}
        }
        habilitarBoton()
    }
    
    @IBAction func pimiento(value: Bool) {
        if(value){
            resultado!.append("Pimiento")
            ingredientes.append("Pimiento")
        }else{
            resultado! = resultado!.filter(){ $0 != "Pimiento"}
            ingredientes = ingredientes.filter(){ $0 != "Pimiento"}
        }
        habilitarBoton()
    }

    func habilitarBoton() {
        if (ingredientes.count == 0) {
            btnSiguiente.setHidden(true)
        } else {
            btnSiguiente.setHidden(false)
        }
    }
    
    @IBAction func ingredientesSeguir() {
        pushControllerWithName("SeguirConfirmacion", context: resultado)
    }


}




