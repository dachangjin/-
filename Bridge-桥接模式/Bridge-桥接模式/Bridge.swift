
//
//  Bridge.swift
//  Bridge-桥接模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

class HandsetSoft {
    func run() {}
}

class HandsetGame: HandsetSoft {
    override func run() {
        print("运行手机游戏")
    }
}

class HandsetAddressList: HandsetSoft {
    override func run() {
        print("运行手机通讯录")
    }
}

class HandsetBrand {
    var soft: HandsetSoft;
    init(soft: HandsetSoft) {
        self.soft = soft
    }
    
    func setSoft(soft: HandsetSoft) {
        self.soft = soft
    }
    
    func run() {
    }
}

class HandsetBrandN: HandsetBrand {
    
    override func run() {
        print("N牌手机")
        soft.run()
    }
}

class HandsetBrandM: HandsetBrand {
    override func run() {
        print("M牌手机")
        soft.run()
    }
}
