//
//  Facade.swift
//  Facade外观模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

// MARK: - 外观模式:为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用


//子系统类，实现子系统的功能，处理Facade对象指派的任务，注意子系统中l没有Facade任何信息，即没有对Facade对象的引用
class SubSystemOne {
    func methodOne() {
        print("子系统方法1")
    }
}

class SubSystemTwo {
    func methodTwo() {
        print("子系统方法2")
    }
}

class SubSystemThree {
    func methodThree() {
        print("子系统方法3")
    }
}

class SubSystemFour {
    func methodFour() {
        print("子系统方法4")
    }
}


//外观类，它需要了解所有子系统的方法或属性，进行组合，以备外接调用
class Facade {
    var one = SubSystemOne()
    var two = SubSystemTwo()
    var three = SubSystemThree()
    var four = SubSystemFour()
    
    func methodA() {
        print("方法组A")
        one.methodOne()
        two.methodTwo()
        four.methodFour()
    }
    
    func methodB() {
        print("方法组B")
        two.methodTwo()
        three.methodThree()
    }
}
