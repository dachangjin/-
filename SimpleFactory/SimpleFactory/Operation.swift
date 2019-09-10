//
//  Operation.swift
//  SimpleFactory
//
//  Created by wangwei on 2019/9/3.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Operation {
    var numberRight: Double = 0
    var numberLeft: Double = 0
    
    func getResult() -> Double {
        return 0
    }
}

class OperationAdd: Operation {
    override func getResult() -> Double {
        return numberLeft + numberRight
    }
}

class OperationSub: Operation {
    override func getResult() -> Double {
        return numberLeft - numberRight
    }
}

class OperationMul: Operation {
    override func getResult() -> Double {
        return numberLeft * numberRight
    }
}

class OperationDiv: Operation {
    override func getResult() -> Double {
        assert(numberRight != 0, "除数不能为0")
        return numberLeft / numberRight
    }
}

class OperationFactory {
    static func createOperate(operate: String) -> Operation {
        switch operate {
        case "+":
            return OperationAdd()
        case "-":
            return OperationSub()
        case "*":
            return OperationMul()
        default:
            return OperationDiv()
        }
    }
}
