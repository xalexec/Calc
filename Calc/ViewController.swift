//
//  ViewController.swift
//  Calc
//
//  Created by alex on 15/11/8.
//  Copyright © 2015年 alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var oper=false
    
    
    var operAnd=Array<String>()
    
    
    var displayValue:String{
        get{
            return display.text!
        }
        set {
            
            display.text=newValue
            
        }
    }
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let text=sender.currentTitle!
        
        if displayValue == "0"||oper{
            oper = false
            displayValue = ""
        }
        
        let dot="."
        if !(text==dot) || !displayValue.containsString(dot){
            displayValue+=text
        }
            
       
    }
    
   
    
    @IBAction func operAte(sender: UIButton) {
        
        oper = true
     
        let op=sender.currentTitle!
        
        print(op == "＝")
        print(operAnd.count<3)
        if op == "＝" && operAnd.count<2{
            return
        }
        
        if operAnd.count==2 && "+-*/".containsString(op){
            operAnd[1]=op
        }
        
        if operAnd.count<4{
            operAnd.append(displayValue)
            operAnd.append(op)
        }
        
        if operAnd.count==4 {
            
            let newVal = perForoper(operAnd[0],it2: operAnd[2]) {
                
                let item1 = Double.init($0)!
                let item2 = Double.init($1)!
                let res = item1 + item2
                
                return res
                }
            //CalcNum(operAnd[1], it1: operAnd[0], it2: operAnd[2])
            let newOp = operAnd[3]
            operAnd.removeAll()
            
            if newOp != "＝" {
                operAnd.append("\(newVal)")
                operAnd.append(newOp)
            }
            displayValue="\(newVal)"
        }
    }
    
    
    func operPlus(it1:String,it2:String)->Double{
        
        let item1 = Double.init(it1)!
        let item2 = Double.init(it2)!
        let res = item1 + item2
        
        return res
    }
    func perForoper(it1:String,it2:String,operation:(String,String)->Double)->Double{
        
        return operation(it1,it2)
        
    }
    
    func CalcNum(op:String,it1:String,it2:String) -> Double{
        
        let item1 = Double.init(it1)!
        let item2 = Double.init(it2)!
        var res=0.0
        switch op{
            case "+":
                res = item1 + item2
            case "-":
                res = item1 - item2
            case "*":
                res = item1 * item2
            case "/":
                res = item1 / item2
            default:
                break
        }
        return res
        
    }
    
   

}

