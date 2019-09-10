//
//  Mediator.swift
//  Mediator-中介者模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class UnitedNations {
    func declare(message: String,colleague: Country) {
    }
}

class UnitedNationSecurityCouncil: UnitedNations {
    var colleague1: USA?
    var colleague2: Iraq?
    
    override func declare(message: String, colleague: Country) {
        if colleague === colleague1 {
            colleague2?.getMessage(message: message)
        } else {
            colleague1?.getMessage(message: message)
        }
    }
}

class Country {
    var mediator: UnitedNations
    init(mediator: UnitedNations) {
        self.mediator = mediator
    }
}

class USA: Country {
    func declare(message: String) {
        mediator.declare(message: message, colleague: self)
    }
    
    func getMessage(message: String) {
        print("美国获得对方信息:\(message)")
    }
}

class Iraq: Country {
    func declare(message: String) {
        mediator.declare(message: message, colleague: self)
    }
    
    func getMessage(message: String) {
        print("伊拉克得对方信息:\(message)")
    }
}


