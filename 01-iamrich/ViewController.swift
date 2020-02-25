//
//  ViewController.swift
//  01-iamrich
//
//  Created by Brayam Alberto Mora Arias on 24/02/20.
//  Copyright © 2020 Brayam Alberto Mora Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var imageRuby: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        /*
        self.labelTitle.text = "He pulsado el botón"
        self.labelTitle.textColor = UIColor.green
        self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
         */
        let controller = UIAlertController(title: "I am Rich", message: """
                                            I am Rich,
                                            I deserve it,
                                            I am good,
                                            healthy and succesfull
                                            """, preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el boton Aceptar")
        }
        controller.addAction(action1)
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsado el boton Borrar")
        })
        controller.addAction(action2)
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el boton Cancelar")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
    }
    
}

