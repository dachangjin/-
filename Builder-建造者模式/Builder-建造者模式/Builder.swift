//
//  Builder.swift
//  Builder-建造者模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class Product {
    var parts = [String]()
    
    func add(part: String) {
        parts.append(part)
    }
    
    func show() {
        print("产品创建---")
        for part in parts {
            print(part)
        }
    }
}

protocol Builder {
    func builderPartA()
    func builderPartB()
    func getProduct() -> Product
}

class ConcreteBuilder1: Builder {
    
    var product = Product()
    
    func builderPartA() {
        product.add(part: "部件A")
    }
    
    func builderPartB() {
        product.add(part: "部件B")
    }
    
    func getProduct() -> Product {
        return product
    }
}

class ConcreteBuilder2: Builder {
    
    var product = Product()
    
    func builderPartA() {
        product.add(part: "部件X")
    }
    
    func builderPartB() {
        product.add(part: "部件Y")
    }
    
    func getProduct() -> Product {
        return product
    }

}


class Director {
    //指挥建造过程
    func construct(builder: Builder) {
        builder.builderPartA()
        builder.builderPartB()
    }
}
