//
//  ConfirmacionPizza.swift
//  PizzaAW
//
//  Created by liliana martinez on 20/03/16.
//  Copyright © 2016 liliana martinez. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionPizza: WKInterfaceController {

    var resultado:[String]?
    
    @IBOutlet var resultadoLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        resultado = context as? [String]
        if let contenidoAntes = resultado {
            //print("elegidos:")
            var texto:String = "🍴➡️\n"
            for index in contenidoAntes {
                texto += "\(index)\n "
                print(index)
            }
            resultadoLabel.setText(texto)
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

}
