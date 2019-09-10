//
//  Decorator.swift
//  Decorator-装饰模式
//
//  Created by wangwei on 2019/9/3.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


protocol Person {
    func show()
}

class XiaoCai: Person {
    var name: String?
    
    init() {
    }
    
    init(name: String) {
        self.name = name
    }
    
    func show() {
        print("装扮的\(String(describing: self.name))")
    }
    
}

class Finery: Person {
    var component: Person?
    
    func decorate(component: Person) {
        self.component = component
    }
    
    func show() {
        if component != nil {
            component!.show()
        }
    }
}

class TShirts: Finery {
    override func show() {
        print("大T恤")
        super.show()
    }
}

class BigTrouser: Finery {
    override func show() {
        print("垮裤")
        super.show()
    }
}

class Sneakers: Finery {
    override func show() {
        print("破球鞋")
        super.show()
    }
}

class LeatherShoes: Finery {
    override func show() {
        print("皮鞋")
        super.show()
    }
}

class Tie: Finery {
    override func show() {
        print("领带")
        super.show()
    }
}

class Suit: Finery {
    override func show() {
        print("西装")
        super.show()
    }
}
