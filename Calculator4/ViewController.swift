//
//  ViewController.swift
//  Calculator4
//
//  Created by Vera Braginets on 18/05/2021.
//

import UIKit

enum Operation {
    case plus
    case minus
    case divide
    case multiply
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        label.font = UIFont(name: "Digital-7", size: 30)
        label.sizeToFit()
        
       btn1.layer.cornerRadius = 10
       btn2.layer.cornerRadius = 10
       btn3.layer.cornerRadius = 10
       btnPl.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    var number1: Double?
    var f: Bool = false
    
    var operation: Operation?
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btnPl: UIButton!
    
    @IBAction func one(_ sender: Any) {
        type(symbol: "1")
    }
    
    @IBAction func two(_ sender: Any) {
        type(symbol: "2")
    }
    
    @IBAction func three(_ sender: Any) {
        type(symbol: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        type(symbol: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        type(symbol: "5")
    }
    
    @IBAction func six(_ sender: Any) {
        type(symbol: "6")
    }
        
    @IBAction func seven(_ sender: Any) {
        type(symbol: "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        type(symbol: "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        type(symbol: "9")
    }
    
    @IBAction func zero(_ sender: Any) {
        type(symbol: "0")
    }
    
    
    @IBAction func summB(_ sender: Any) {
        operation = .plus
        number1 = Double(label.text!)
        f = true
    }
    
    @IBAction func minus(_ sender: Any) {
        operation = .minus
        number1 = Double(label.text!)
        f = true
    }
    
    @IBAction func divide(_ sender: Any) {
        operation = .divide
        number1 = Double(label.text!)
        f = true
    }
    
    @IBAction func perc(_ sender: Any) {
        let answer: Double = number1! / 100 * Double(label.text!)!
        label.text = String(answer)
    }
    
    @IBAction func punt(_ sender: Any) {
        if !label.text!.contains(".") {
            type(symbol: ".")
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        operation = .multiply
        number1 = Double(label.text!)
        f = true
    }
    
    
    @IBAction func toggleSign(_ sender: Any) {
        if !label.text!.contains("-") {
            label.text = "-" + label.text!
        }else{
            label.text?.removeFirst()
        }
    }
    
   
    

    @IBAction func equally(_ sender: Any) {
       
        guard let operation = operation else { return }
       
        let number2 = Double(label.text!)
        var answer = 0.0
        switch operation {
        
        case .plus:
            answer = number1! + number2!
         
        case .minus:
            answer = number1! - number2!
            
        case .divide:
            answer = number1! /  number2!
            
        case .multiply:
            answer = number1! *  number2!

        }
        
        // formating number for display
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2

        let number = NSNumber(value: answer)
        let formattedValue = formatter.string(from: number)!
        
        label.text = formattedValue
    }
    
    func type(symbol: String) {
        if label.text == "0" {
            label.text = ""
        }
        
        if f == true {
            label.text = ""
            f = false
            }
        
        label.text = label.text! + symbol
        
        if label.text == "." {
            label.text = "0."
        }
        
        
    
    }
    
    @IBAction func clearButton(_ sender: Any) {
        label.text = "0"
        
    }
    
}

