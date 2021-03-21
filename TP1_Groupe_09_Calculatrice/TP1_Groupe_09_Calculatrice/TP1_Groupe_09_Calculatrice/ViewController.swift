//
//  ViewController.swift
//  TP1_Groupe_09_Calculatrice
//
//  Created by mbds on 21/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCalc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func supprDE(_ sender: Any) {
        var texte:String = txtCalc.text!
        if(!texte.isEmpty){
            texte.removeLast()
            txtCalc.text = ("\(texte)")
        }
    }
    
    @IBAction func sept(_ sender: Any) {
        txtCalc.insertText("7")
    }
    
    @IBAction func huit(_ sender: Any) {
        txtCalc.insertText("8")    }
    
    @IBAction func neuf(_ sender: Any) {
        txtCalc.insertText("9")    }
    
    @IBAction func quatre(_ sender: Any) {
        txtCalc.insertText("4")    }
    
    @IBAction func cinq(_ sender: Any) {
        txtCalc.insertText("5")    }
    
    @IBAction func six(_ sender: Any) {
        txtCalc.insertText("6")    }
    
    @IBAction func un(_ sender: Any) {
        txtCalc.insertText("1")    }
    
    @IBAction func deux(_ sender: Any) {
        txtCalc.insertText("2")    }
    
    @IBAction func trois(_ sender: Any) {
        txtCalc.insertText("3")
    }
    @IBAction func zeros(_ sender: Any) {
        txtCalc.insertText("0")    }
    
    
    @IBAction func division(_ sender: Any) {
        txtCalc.insertText("/")
    }
    
    @IBAction func multiplication(_ sender: Any) {
        txtCalc.insertText("*")
    }
    
    @IBAction func moins(_ sender: Any) {
        txtCalc.insertText("-")    }
    
    @IBAction func plus(_ sender: Any) {
        txtCalc.insertText("+")    }
    
    
    @IBAction func parenthese1(_ sender: Any) {
        txtCalc.insertText("(")
    }
    
    @IBAction func parenthese2(_ sender: Any) {
        txtCalc.insertText(")")
    }
    
    
    @IBAction func del(_ sender: Any) {
        txtCalc.text = ""
    }
    
    @IBAction func egale(_ sender: Any) {
        let texte:String = txtCalc.text ?? "0"
        
        let stringWithMathematicalOperation: String = texte
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
        let result: Double = exp.expressionValue(with:nil, context: nil) as! Double
        txtCalc.text = "\(result)"
        
    }
}

