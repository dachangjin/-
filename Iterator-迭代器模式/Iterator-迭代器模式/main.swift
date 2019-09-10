//
//  main.swift
//  Iterator-迭代器模式
//
//  Created by wangwei on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


let a = ConcreteAggregate()
a.append(item: "大鸟")
a.append(item: "小菜")
a.append(item: "行李")
a.append(item: "老外")
a.append(item: "公交内部员工")
a.append(item: "小偷")

//var i = ConcreteIterator(aggregate: a)
var i = ConcreteInteratorDesc(aggregate: a)


var item = i.first()!

while !i.isDone() {
    print("\(i.currentItem()!) 请买车票")
    i.next()
}


