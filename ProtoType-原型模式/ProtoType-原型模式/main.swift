//
//  main.swift
//  ProtoType-原型模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let a = Resume(name: "大鸟")
a.setPersonalInfo(sex: "男", age: 29)
a.setWorkExperience(data: "1998-2000", company: "XX公司")

let b = a.clone()
b.setWorkExperience(data: "2000-2006", company: "YY企业")

let c = a.clone()
c.setPersonalInfo(sex: "男", age: 24)
c.setWorkExperience(data: "1998-2003", company: "ZZ企业")

a.display()
b.display()
c.display()


