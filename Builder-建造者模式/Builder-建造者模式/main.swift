//
//  main.swift
//  Builder-建造者模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let director = Director()
let b1 = ConcreteBuilder1()
let b2 = ConcreteBuilder2()

//指挥者用ConcreteBuilder1来建造产品
director.construct(builder: b1)
b1.getProduct().show()

//指挥者用ConcreteBuilder2来建造h产品
director.construct(builder: b2)
b2.getProduct().show()

