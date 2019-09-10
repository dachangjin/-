//
//  main.swift
//  TemplateMethod-模板方法模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

print("学生A的答卷")
let stuA = TestPaperA()
stuA.testQuestion1()
stuA.testQuestion2()
stuA.testQuestion3()

print("学生B的答卷")
let stuB = TestPaperB()
stuB.testQuestion1()
stuB.testQuestion2()
stuB.testQuestion3()

