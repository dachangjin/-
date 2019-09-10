//
//  main.swift
//  Proxy-代理模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let jiaojiao = SchoolGirl(name: "娇娇")
let proxy = Proxy(mm: jiaojiao)
proxy.giveDolls()
proxy.giveFlowers()
proxy.giveChocolate()

