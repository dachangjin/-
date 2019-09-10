//
//  Adapter.swift
//  Adapter-适配器模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Player {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func attack() {}
    func defense() {}
}

class Forwards: Player {
    override func attack() {
        print("前锋 \(name) 进攻")
    }
    
    override func defense() {
        print("前锋 \(name) 防守")
    }
}

class Center: Player {
    override func attack() {
        print("中锋 \(name) 进攻")
    }
    
    override func defense() {
        print("中锋 \(name) 防守")
    }
}

class Guards: Player {
    override func attack() {
        print("后卫 \(name) 进攻")
    }
    
    override func defense() {
        print("后卫 \(name) 防守")
    }
}

//外籍中锋不懂英语，也就是没有继承Player,没有实现attack 和defense方法，此时需要适配器，也就是翻译
class ForeignCenter {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func 进攻() {
        print("外籍中锋 \(name) 进攻")
    }
    
    func 防守() {
        print("外籍中锋 \(name) 防守")
    }
}

//翻译者
class Translator: Player {
    var foreignCenter: ForeignCenter
    
    override init(name: String) {
        foreignCenter = ForeignCenter(name: name)
        super.init(name: name)
    }
    
    override func attack() {
        foreignCenter.进攻()
    }
    
    override func defense() {
        foreignCenter.防守()
    }
}
