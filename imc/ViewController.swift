//
//  ViewController.swift
//  imc
//
//  Created by Jadiê Oliveira on 09/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var viewResult: UIView!
    var imc: Double = 0
    
    @IBOutlet weak var tfHeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / pow(height, 2)
            showResult()
        }
    }
    
    func showResult() {
        var result: String = ""
        var img: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                img = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                img = "abaixo"
            case 18.5..<25:
                result = "Ideal"
                img = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                img = "sobre"
            default:
                result = "Obesidade"
                img = "obesidade"
        }
        lbResult.text = "\(Int(imc)) : \(result)"
        ivResult.image = UIImage(named: img)
        viewResult.isHidden = false
    }
    
}

