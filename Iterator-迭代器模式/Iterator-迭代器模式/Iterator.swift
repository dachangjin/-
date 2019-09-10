//
//  Iterator.swift
//  Iterator-迭代器模式
//
//  Created by wangwei on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//


protocol Iterator {
    func first() -> Any?
    func next() -> Any?
    func isDone() -> Bool
    func currentItem() -> Any?
}

protocol Aggregate {
    func createIterator() -> Iterator
}

class ConcreteAggregate: Aggregate {
    var items = [Any]()
    
    func createIterator() -> Iterator {
        return ConcreteIterator(aggregate: self)
    }
    
    func count() -> Int {
        return items.count
    }
    
    func append(item: Any) {
        items.append(item)
    }
    
    subscript(index: Int) -> Any? {
        get {
            return items[index]
        }
    }
}

class ConcreteIterator: Iterator {
    
    
    var aggregate: ConcreteAggregate;
    var current = 0
    
    init(aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
    }
    
    func first() -> Any? {
        return aggregate[0]
    }
    
    @discardableResult
    func next() -> Any? {
        var ret: Any? = nil
        current = current + 1
        
        if current < aggregate.count() {
            ret = aggregate[current]
        }
        return ret;

    }
    
    func isDone() -> Bool {
        return current >= aggregate.count()
    }
    
    func currentItem() -> Any? {
        return aggregate[current]
    }
}

class ConcreteInteratorDesc: Iterator {
    var aggregate: ConcreteAggregate;
    var current = 0
    
    init(aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
        current = aggregate.count() - 1
    }
    
    func first() -> Any? {
        return aggregate[aggregate.count() - 1]
    }
    
    @discardableResult
    func next() -> Any? {
        var ret: Any? = nil
        current = current - 1
        
        if current >= 0 {
            ret = aggregate[current]
        }
        return ret;
        
    }
    
    func isDone() -> Bool {
        return current < 0
    }
    
    func currentItem() -> Any? {
        return aggregate[current]
    }
}
