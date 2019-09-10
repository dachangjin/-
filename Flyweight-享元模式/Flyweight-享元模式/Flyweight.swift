//
//  Flyweight.swift
//  Flyweight-享元模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class User {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Website {
    func use(user: User) {}
}

class ConcreteWebsite: Website {
    var name = ""
    
    init(name: String) {
        self.name = name
    }
    
    override func use(user: User) {
        print("网站分类: \(name) 用户:\(user.name)")
    }
}


class WebsiteFactory {
    private var flyweights = [String: Website]()
    
    func getWebsiteCategory(key: String) -> Website {
        if !flyweights.keys.contains(key) {
            flyweights[key] = ConcreteWebsite(name: key)
        }
        return flyweights[key]!
    }
    
    func getWebsiteCount() -> Int {
        return flyweights.count
    }
}


