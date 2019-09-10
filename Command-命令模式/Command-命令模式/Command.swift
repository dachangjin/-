//
//  Command.swift
//  Command-命令模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation



//执行者有执行各种命令的方法。命令持有执行者的应用。管理者持有命令的集合，并判断命令的添加与否，并有执行和取消命令的方法
class Barbecuer {
    func bakeMutton() {
        print("烤羊肉串")
    }
    
    func bakeChickenWing() {
        print("烤鸡翅膀")
    }
}

class Command {
    var barbecuer: Barbecuer
    init(barbecuer: Barbecuer) {
        self.barbecuer = barbecuer
    }
    
    func excuteCommand() {
    }
    
    func toString() -> String {
        return ""
    }
}

class BakeMuttonCommand: Command {
    override func excuteCommand() {
        barbecuer.bakeMutton()
    }
    
    override func toString() -> String {
        return "烤羊肉串"
    }
}

class BakeChickenWingCommand: Command {
    override func excuteCommand() {
        barbecuer.bakeChickenWing()
    }
    
    override func toString() -> String {
        return "烤鸡翅膀"
    }
}

class Waiter {
    var commandList = [Command]()
    
    func addCommand(command: Command) {
        if command is BakeChickenWingCommand {
            print("鸡翅膀没有了，请点别的烧烤")
        } else {
            commandList.append(command)
            print("增加订单:\(command.toString()) 时间:\(Date().description)")
        }
    }
    
    func cancelCommand(command: Command) {
        commandList.removeAll { command === $0 }
        print("取消订单:\(command.toString()) 时间:\(Data().description)")
    }
    
    func notify() {
        for command in commandList {
            command.excuteCommand()
        }
    }
}
