//
//  main.swift
//  Composite-组合模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let root = ConcreteCompany(name: "北京总公司")
root.add(c: HRDepartment(name: "总公司人力资源部"))
root.add(c: FinanceDepartment(name: "总公司财务部"))

let comp = ConcreteCompany(name: "上海华东分公司")
comp.add(c: HRDepartment(name: "华东分公司人力资源部"))
comp.add(c: FinanceDepartment(name: "华东分公司财务部"))
root.add(c: comp)

let comp1 = ConcreteCompany(name: "南京办事处")
comp1.add(c: HRDepartment(name: "南京办事处人力资源部"))
comp1.add(c: FinanceDepartment(name: "南京办事处财务部"))
comp.add(c: comp1)

let comp2 = ConcreteCompany(name: "杭州办事处")
comp2.add(c: HRDepartment(name: "杭州办事处人力资源部"))
comp2.add(c: FinanceDepartment(name: "杭州办事处财务部"))
comp.add(c: comp2)


print("结构图")
root.display(depth: 1)

print("职责")
root.lineOfDuty()


