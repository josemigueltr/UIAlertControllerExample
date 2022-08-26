//
//  UIAlertController+extension.swift
//  UIAlertsExample
//
//  Created by miguel toledo on 26/08/22.
//

import Foundation
import UIKit

extension UIViewController{
    
    func ConfigureAlert(title: String, message: String, actions:[AlertActionStruct], completion: @escaping () -> Void){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (_, action) in actions.enumerated() {
            alert.addAction(UIAlertAction.init(title: action.title, style:action.actionStyle,  handler:action.handlerAction))
        }
        
        self.present(alert, animated: true){
            completion()
        }
    }

}

