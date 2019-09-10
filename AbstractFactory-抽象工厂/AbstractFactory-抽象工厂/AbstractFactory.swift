//
//  AbstractFactory.swift
//  AbstractFactory-抽象工厂
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation


class User {
    var userId = ""
    var name = ""
}

class Login {
    var userId = ""
    var date = Date()
}


protocol IUser {
    func insert(user: User)
    @discardableResult
    func getUser(by Id: String) -> User
}

protocol ILogin {
    func insert(login: Login)
    func getLogin(by Id: String) -> Login
}


class MysqlUser: IUser {
    
    func insert(user: User) {
        print("在mysql的user表中插入一条元素")
    }
    
    func getUser(by Id: String) -> User {
        print("在mysql的user表中得到id为\(Id)的一条数据")
        let user = User()
        user.userId = Id
        return user
    }
}

class OracleUser: IUser {
    
    func insert(user: User) {
        print("在oraclel的user表中插入一条元素")
    }
    
    func getUser(by Id: String) -> User {
        print("在oraclel的user表中得到id为\(Id)的一条数据")
        let user = User()
        user.userId = Id
        return user
    }
}

class SqlLogin: ILogin {
    func insert(login: Login) {
        print("在mysql的login表中插入一条元素")
    }
    
    func getLogin(by Id: String) -> Login {
        print("在mysql的user表中得到id为\(Id)的一条数据")
        let login = Login()
        login.userId = Id
        return login
    }
}

class OracleLogin: ILogin {
    func insert(login: Login) {
        print("在oracle的login表中插入一条元素")
    }
    
    func getLogin(by Id: String) -> Login {
        print("在oracle的user表中得到id为\(Id)的一条数据")
        let login = Login()
        login.userId = Id
        return login
    }
}

protocol IFactory {
    func createUser() -> IUser
    func createLogin() -> ILogin
}

class MysqlFactory: IFactory {
    func createUser() -> IUser {
        return MysqlUser()
    }
    
    func createLogin() -> ILogin {
        return SqlLogin()
    }
}

class OracleFactory: IFactory {
    func createUser() -> IUser {
        return OracleUser()
    }
    
    func createLogin() -> ILogin {
        return OracleLogin()
    }
}



