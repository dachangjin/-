//
//  main.swift
//  Factory-工厂方法模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


let operFactory = AddFactory()
var oper = operFactory.getOperation()
oper.left = 1
oper.right = 2
print("result: \(oper.getResult())")
