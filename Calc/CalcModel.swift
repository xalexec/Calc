//
//  CalcModel.swift
//  Calc
//
//  Created by alex on 15/11/8.
//  Copyright © 2015年 alex. All rights reserved.
//

import Foundation

class CalcModel{
    init(text:String,type:CalcType){
        self.text=text
        self.type=type
    }
    var text:String{
        get{return self.text}
        set{self.text=newValue}
    }
    var type:CalcType{
        get{return self.type}
        set{self.type=newValue}
    }
}