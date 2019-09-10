//
//  SingleTon.swift
//  SingleTon-单例模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

//懒汉单重锁
class SingleTon {
    private static var instance: SingleTon?
    private static let lock: NSLock = NSLock()
    
    static func sharedInstance() -> SingleTon {
        lock.lock()
        defer {
            lock.unlock()
        }
        if instance == nil {
            instance = SingleTon()
        }
        return instance!
    }
    
    private init() {}

}

//懒汉双重锁定,避免每次都要调用lock()，影响性能
class SingleTon1 {
    private static var instance: SingleTon1?
    private static let lock: NSLock = NSLock()
    
    static func sharedInstance() -> SingleTon1 {
        if instance == nil {
            lock.lock()
            if instance == nil {
                instance = SingleTon1()
            }
            lock.unlock()
        }
        return instance!
    }
    
    private init() {}

}

//饿汉式
class SingleTon2 {
    private static var instance: SingleTon2 = SingleTon2()
    static func sharedInstance() -> SingleTon2 {
        return instance
    }
    
    private init() {}
}


class SingleTon3 {
    static var instance = { return SingleTon3() }()
}
