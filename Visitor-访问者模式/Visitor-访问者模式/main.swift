//
//  main.swift
//  Visitor-访问者模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let o = ObjectsStructure()
o.attach(element: Man())
o.attach(element: Woman())

let v1 = Success()
o.display(visitor: v1)

let v2 = Failing()
o.display(visitor: v2)

let v3 = Amativeness()
o.display(visitor: v3)


