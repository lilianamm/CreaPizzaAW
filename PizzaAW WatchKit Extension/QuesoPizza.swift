//
//  QuesoPizza.swift
//  PizzaAW
//
//  Created by liliana martinez on 20/03/16.
//  Copyright © 2016 liliana martinez. All rights reserved.
//

import WatchKit
import Foundation


class QuesoPizza: WKInterfaceController {

    let quesoList:[(String,String)] = [("Elegido Mozarella","Morazella"),("Elegido Cheddar","Cheddar"),("Elegido Parmesano","Parmesano"),("Elegido sin queso","Sin Queso")]
    
    var pickerItems:[WKPickerItem]?
    
    var resultado:[String]?
    var quesoElegido = "Mozarella"
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    
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
        
        pickerItems = quesoList.map(){
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.1
            pickerItem.caption = $0.0
            return pickerItem
        }
        
        quesoPicker.setItems(pickerItems)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionQueso(value: Int) {
        if (!resultado!.isEmpty) {
            resultado = resultado!.filter(){
                $0 != quesoElegido
            }
        }
        
        let pickedItem = pickerItems![value]
        if pickedItem.title != nil {
            print(pickedItem.title!)
            quesoElegido = pickedItem.title!
        }
    }
    
    @IBAction func quesoSeguir() {
        if (!resultado!.isEmpty) {
            resultado = resultado!.filter(){
                $0 != quesoElegido
            }
        }
        
        resultado!.append(quesoElegido)
        pushControllerWithName("seguirIngredientes", context: resultado)
    }
}
