//
//  main.swift
//  AbstractFactory-抽象工厂
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let sqlFac = MysqlFactory()
let userOper = sqlFac.createUser()
userOper.getUser(by: "1")
userOper.insert(user: User())


