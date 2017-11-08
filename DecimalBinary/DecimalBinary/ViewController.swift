//
//  ViewController.swift
//  DecimalBinary
//
//  Created by Nicola Solazzo on 08/11/17.
//  Copyright © 2017 Nicola Solazzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var decNumb: UITextField!
    
    @IBOutlet weak var binNumb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //metodo per uscire dalla tastiera numerica
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

   
    @IBAction func convertButton(_ sender: Any) {
        binNumb.text! = conv(num: decNumb.text!, str: binNumb.text!)
    }
    

    @IBAction func reset(_ sender: Any) {
        binNumb.text = "0"
        decNumb.text = "0"
    }
    
    func conv(num:String, str: String) -> String {
        let numero = num
        let str = String( Int(numero)! , radix: 2)
        return str
    }
    
}

