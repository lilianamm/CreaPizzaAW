//
//  TamañoPizza.swift
//  PizzaAW
//
//  Created by liliana martinez on 20/03/16.
//  Copyright © 2016 liliana martinez. All rights reserved.
//

import WatchKit
import Foundation


class TamañoPizza: WKInterfaceController {

    let tamanoList:[(String,String)] = [("Elegida Grande","Grande"),("Elegida Mediana","Mediana"),("Elegida Pequeña","Pequeña")]
    
    var pickerItems:[WKPickerItem]?
    
    var tamanoElegido = "Grande"
    
    var resultado:[String] = []
    
    @IBOutlet var tamañoPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pickerItems = tamanoList.map(){
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.1
            pickerItem.caption = $0.0
            return pickerItem
        }
        
        tamañoPicker.setItems(pickerItems)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func seleccionTamaño(value: Int) {
        if (!resultado.isEmpty) {
            resultado = resultado.filter(){
                $0 != tamanoElegido
            }
        }
        NSLog("List Picker: \(tamanoList[value].0) selected")
        let pickedItem = pickerItems![value]
        if pickedItem.title != nil {
            tamanoElegido = pickedItem.title!
        }
    }
    
    @IBAction func tamañoSeguir() {
        if (!resultado.isEmpty) {
            resultado = resultado.filter(){
                $0 != tamanoElegido
            }
        }
        resultado.append(tamanoElegido)
        pushControllerWithName("seguirMasa", context: resultado)
    }
    
}
