//
//  ViewController.swift
//  BolaMagica
//
//  Created by Ronald Murillo Solano on 14/4/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let arregloBolas : [String] = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var imgBola: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnEjecuta(_ sender: UIButton) {
        
        var indice : Int = 0
        indice = genValor()
        imgBola.image = UIImage(named: arregloBolas[indice])
        
    
    
    }
    
    func genValor() -> Int{
        var valor : Int = 10
    
        while valor > 4 {
            valor = Int(arc4random_uniform(15))
        }
        return valor
    }

}

