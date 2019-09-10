//
//  Stratefy.swift
//  Strategy-策略模式
//
//  Created by wangwei on 2019/9/3.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Cash {
    func acceptCash(money: Double) -> Double {
        return money
    }
}

class CashNormal: Cash {
    
}

class CashRebate: Cash {
    
    var moneyRebate: Double
    
    init(moneyRebate: Double) {
        self.moneyRebate = moneyRebate
    }
    
    override func acceptCash(money: Double) -> Double {
        return money * moneyRebate
    }
}

class CashReturn: Cash {
    
    var moneyCondition: Double
    var moneyReturn: Double
    
    init(mCondition: Double, mReturn: Double) {
        self.moneyReturn = mReturn
        self.moneyCondition = mCondition
    }
    
    override func acceptCash(money: Double) -> Double {
        if money >= moneyCondition {
            return money - (money / moneyCondition) * moneyReturn
        }
        return money
    }
}


class CashContext {
    var cash: Cash
    
    init(cash: Cash) {
        self.cash = cash
    }
    
    func getResult(money: Double) -> Double {
        return cash.acceptCash(money: money)
    }
}

class CashContext1 {
    var cash: Cash?
    init(string: String) {
        switch string {
        case "正常收费":
            cash = CashNormal()
        case "满300返100":
            cash = CashReturn(mCondition: 300, mReturn: 100)
        case "f打8折":
            cash = CashRebate(moneyRebate: 0.8)
        default:
            cash = nil
        }
    }
    
    func getResult(money: Double) -> Double {
        return cash?.acceptCash(money: money) ?? money
    }
    
}
