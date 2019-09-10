//
//  main.swift
//  Strategy-策略模式
//
//  Created by wangwei on 2019/9/3.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

//策略模式
func getPrice(string: String,price: Double) -> Double {
    var cc: CashContext? = nil
    switch string {
    case "正常收费":
        cc = CashContext(cash: CashNormal())
    case "满300返100":
        cc = CashContext(cash: CashReturn(mCondition: 300, mReturn: 100))
    case "f打8折":
        cc = CashContext(cash: CashRebate(moneyRebate: 0.8))
    default:
        cc = nil
    }
    return cc?.getResult(money: price) ?? price
}

//策略与简单工厂结合
func getPrice1(string: String,price: Double) -> Double {
    let cc = CashContext1(string: string)
    return cc.getResult(money: price)
}


