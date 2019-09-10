//
//  Composite.swift
//  Composite-组合模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//


class Company {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func add(c: Company) {}
    func remove(c: Company) {}
    func display(depth: Int) {
        print(String(repeating: "-", count: depth),name)
    }
    func lineOfDuty() {}
}

class ConcreteCompany: Company {
    
    var children = [Company]()
    
    override func add(c: Company) {
        children.append(c)
    }
    
    override func remove(c: Company) {
        children.removeAll { $0 === c }
    }
    
    override func display(depth: Int) {
        super.display(depth: depth)
        for child in children {
            child.display(depth: depth + 2)
        }
    }
    
    override func lineOfDuty() {
        for child in children {
            child.lineOfDuty()
        }
    }
}

class HRDepartment: Company {
    
    override func lineOfDuty() {
        print("\(name) 员工招聘培训管理")
    }
}

class FinanceDepartment: Company {
    
    override func lineOfDuty() {
        print("\(name) 公司财务收支管理")
    }
}
