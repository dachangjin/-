//
//  main.swift
//  ChainOfResponsibility-责任链模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let jingli = CommonManager(name: "经理")
let zongjian = MajorManager(name: "总监")
let zongjingli = GeneralManager(name: "总经理")

//设置上级
jingli.setSuperior(s: zongjian)
zongjian.setSuperior(s: zongjingli)

let request = Request()
request.requestType = Request.requestTypeOff
request.requestContent = "小菜请假"
request.number = 1

jingli.requestApplication(request: request)

let request2 = Request()
request2.requestType = Request.requestTypeOff
request2.requestContent = "小菜请假"
request2.number = 4
jingli.requestApplication(request: request2)

let request3 = Request()
request3.requestType = Request.requestTypeAddSalary
request3.requestContent = "小菜请求加薪"
request3.number = 500
jingli.requestApplication(request: request3)

let request4 = Request()
request4.requestType = Request.requestTypeAddSalary
request4.requestContent = "小菜请求加薪"
request4.number = 1000
jingli.requestApplication(request: request4)


