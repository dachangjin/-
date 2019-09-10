//
//  Visitor.swift
//  Visitor-访问者模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Action {
    func getManConclusion(concreteElementA: Man) {}
    func getWomanConclusion(concreteElementB: Woman) {}
    func toString() -> String {
        return ""
    }
}

class Success: Action {
    override func getManConclusion(concreteElementA: Man) {
        print("\(concreteElementA.toString()) \(self.toString())时，背后后多半有一个伟大的女人")
    }
    
    override func getWomanConclusion(concreteElementB: Woman) {
        print("\(concreteElementB.toString()) \(self.toString())时，背后后多半有一个不成功的男人")
    }
    
    override func toString() -> String {
        return "成功"
    }
}

class Failing: Action {
    override func getManConclusion(concreteElementA: Man) {
        print("\(concreteElementA.toString()) \(self.toString())时，闷声喝酒")
    }
    
    override func getWomanConclusion(concreteElementB: Woman) {
        print("\(concreteElementB.toString()) \(self.toString())时，就是哭")
    }
    
    override func toString() -> String {
        return "失败"
    }
}

class Amativeness: Action {
    override func getManConclusion(concreteElementA: Man) {
        print("\(concreteElementA.toString()) \(self.toString())时，凡是不懂也装懂")
    }
    
    override func getWomanConclusion(concreteElementB: Woman) {
        print("\(concreteElementB.toString()) \(self.toString())时，凡是懂也装不懂")
    }
    
    override func toString() -> String {
        return "恋爱"
    }
}

class Person {
    
    func accept(visitor: Action) {
    }
    func toString() -> String {
        return ""
    }
}

class Man: Person {
    override func toString() -> String {
        return "男人"
    }
    
    override func accept(visitor: Action) {
        visitor.getManConclusion(concreteElementA: self)
    }
}

class Woman: Person {
    override func toString() -> String {
        return "女人"
    }
    
    override func accept(visitor: Action) {
        visitor.getWomanConclusion(concreteElementB: self)
    }
}


class ObjectsStructure {
    var elements = [Person]()
    
    func attach(element: Person) {
        elements.append(element)
    }
    
    func detach(element: Person) {
        elements.removeAll { element === $0 }
    }
    
    func display(visitor: Action) {
        for persion in elements {
            persion.accept(visitor: visitor)
        }
    }
}

