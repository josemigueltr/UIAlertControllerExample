//
//  ViewController.swift
//  UIAlertsExample
//
//  Created by miguel toledo on 25/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func actionAlert1(_ sender: UIButton) {
        var alertActions = [AlertActionStruct]()
        alertActions.append(AlertActionStruct(title: "Cancel", actionStyle: .cancel, handlerAction: nil))
        self.ConfigureAlert(title: "Alerta 1", message: "Esta alerta solo muestra la opcion de cancelar", actions:alertActions){}
        
    }

    
    @IBAction func actionAlert2(_ sender: UIButton) {
        var alertActions = [AlertActionStruct]()
        
        alertActions.append(AlertActionStruct(title: "Ok", actionStyle: .default, handlerAction: {( _: UIAlertAction!) in self.ChangueBackground()}))
        
        
        alertActions.append(AlertActionStruct(title: "Cancel", actionStyle: .cancel, handlerAction: nil))
        
        self.ConfigureAlert(title: "Alerta 2", message: "Esta alerta cambia el color de la pantalla durante unos segundos", actions:alertActions) {}
    }
    
    func ChangueBackground(){
        self.view.backgroundColor = .green
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.view.backgroundColor = .tertiarySystemBackground
        }
    }
    
}


