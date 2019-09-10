//
//  main.swift
//  Mediator-中介者模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


let UNSC = UnitedNationSecurityCouncil()
let c1 = USA(mediator: UNSC)
let c2 = Iraq(mediator: UNSC)

UNSC.colleague1 = c1
UNSC.colleague2 = c2

c1.declare(message: "不准研制核武器，否则发动战争")
c2.declare(message: "我们没有核武器，也不怕侵略")
