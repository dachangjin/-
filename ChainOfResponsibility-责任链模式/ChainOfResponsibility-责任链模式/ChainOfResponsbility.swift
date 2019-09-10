//
//  ChainOfResponsbility.swift
//  ChainOfResponsibility-责任链模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Request {
    
    static let requestTypeOff = "请假"
    static let requestTypeAddSalary = "加薪"
    
    var requestType = ""
    var requestContent = ""
    var number = 0
}

class Manager {
    var name: String
    var superior: Manager?
    
    init(name: String) {
        self.name = name
    }
    
    func setSuperior(s: Manager) {
        self.superior = s
    }
    
    func requestApplication(request: Request) {
    
    }
}


class CommonManager: Manager {
    override func requestApplication(request: Request) {
        if request.requestType == Request.requestTypeOff && request.number <= 2 {
            print("\(name):\(request.requestContent) 数量\(request.number) 被批准")
        } else {
            if superior != nil {
                superior?.requestApplication(request: request)
            }
        }
    }
}

//总监
class MajorManager: Manager {
    override func requestApplication(request: Request) {
        if request.requestType == Request.requestTypeOff && request.number <= 5 {
            print("\(name):\(request.requestContent) 数量\(request.number) 被批准")
        } else {
            if superior != nil {
                superior?.requestApplication(request: request)
            }
        }
    }
}

//总经理
class GeneralManager: Manager {
    override func requestApplication(request: Request) {
        if request.requestType == Request.requestTypeOff {
            print("\(name):\(request.requestContent) 数量\(request.number) 被批准")
        } else if request.requestType == Request.requestTypeAddSalary {
            if request.number <= 500 {
                print("\(name):\(request.requestContent) 数量\(request.number) 被批准")
            } else {
                print("\(name):\(request.requestContent) 数量\(request.number) 再说吧")
            }
        }
    }
}
