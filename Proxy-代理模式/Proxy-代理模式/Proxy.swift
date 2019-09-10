//
//  Proxy.swift
//  Proxy-代理模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

protocol IGaveGift {
    func giveDolls()
    func giveFlowers()
    func giveChocolate()
}

class SchoolGirl {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Pursuit: IGaveGift {

    var mm: SchoolGirl
    
    init(mm: SchoolGirl) {
        self.mm = mm
    }
    
    func giveDolls() {
        print("\(mm.name) 送你洋娃娃")
    }
    
    func giveFlowers() {
        print("\(mm.name) 送你鲜花")
    }
    
    func giveChocolate() {
        print("\(mm.name) 送你巧克力")
    }
}

class Proxy: IGaveGift {
    
    var gg: Pursuit
    
    init(mm: SchoolGirl) {
        gg = Pursuit(mm: mm)
    }
    
    func giveDolls() {
        gg.giveDolls()
    }
    
    func giveFlowers() {
        gg.giveFlowers()
    }
    
    func giveChocolate() {
        gg.giveChocolate()
    }
    
}
