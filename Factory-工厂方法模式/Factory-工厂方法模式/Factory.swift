//
//  Factory.swift
//  Factory-工厂方法模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


protocol Operation {
    func getResult() -> Double
    var left: Double { get set }
    var right: Double { get set }
    
}

class OperationAdd: Operation {
    
    var left: Double = 0
    var right: Double = 0
    
    func getResult() -> Double {
        return left + right
    }
}

class OperationSub: Operation {
    
    var left: Double = 0
    var right: Double = 0
    
    func getResult() -> Double {
        return left - right
    }
}

class OperationMul: Operation {
    
    var left: Double = 0
    var right: Double = 0
    
    func getResult() -> Double {
        return left * right
    }
}

class OperationDiv: Operation {
    
    var left: Double = 0
    var right: Double = 0
    
    func getResult() -> Double {
        return left / right
    }
}

protocol Factory {
    func getOperation() -> Operation
}

class AddFactory: Factory {
    
    func getOperation() -> Operation {
        return OperationAdd()
    }
}

class SubFactory: Factory {
    
    func getOperation() -> Operation {
        return OperationSub()
    }
}

class MulFactory: Factory {
    
    func getOperation() -> Operation {
        return OperationMul()
    }
}

class DivFactory: Factory {
    
    func getOperation() -> Operation {
        return OperationDiv()
    }
}


