//
//  File.swift
//  ProtoType-原型模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

protocol Cloneable {
    func clone() -> Self
}

class WorkExperience: Cloneable {
    var workDate = ""
    var company = ""
    
    required init() {
    }
    
    func clone() -> Self {
        let we = type(of: self).init()
        we.workDate = workDate
        we.company = company
        return we
    }
}

class Resume: Cloneable {
    var name = ""
    var sex = ""
    var age = 0
    var work = WorkExperience()
    
    required init() {
    }
    
    init(name: String) {
        self.name = name
    }
    
    func setPersonalInfo(sex: String, age: Int) {
        self.sex = sex
        self.age = age
    }
    
    func setWorkExperience(data: String,company: String) {
        work.workDate = data
        work.company = company
    }
    
    func display() {
        print(name, sex, age)
        print("工作经历:\(work.workDate) \(work.company)")
    }
    
    func clone() -> Self {
        let resume = type(of: self).init()
        resume.name = self.name
        resume.sex = self.sex
        resume.age = self.age
        resume.work = self.work.clone()
        return resume
    }
}


