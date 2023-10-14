//
//  ViewController.swift
//  1907038
//
//  Created by Gaming Lab on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    var str=""
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var btn: UIButton!
    var cnt=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func SumButton(_ sender: Any) {
        cnt=cnt+1
        if(cnt%2==0){
            textField1.text=""
            textField2.text=""
            btn.setTitle("Sum", for: .normal)
            result.text=""
        }
        else{
            str=textField1.text ??  "0"
            
            var num1:Int
            num1=Int(str) ?? 0
            var num2:Int
            num2=Int(textField2.text ?? "0") ?? 0
            
            var sum:Int
            sum=num1+num2
            
            result.text=String(sum)
            
            btn.setTitle("Clear", for:.normal)
        }
        
        
        
    }
}

