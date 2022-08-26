//
//  ActionAlertStruct.swift
//  UIAlertsExample
//
//  Created by miguel toledo on 26/08/22.
//

import Foundation

import Foundation
import UIKit

struct AlertActionStruct{
    let title: String
    let actionStyle: UIAlertAction.Style
    let handlerAction:((UIAlertAction) -> Void)?
}
