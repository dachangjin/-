//
//  main.swift
//  Command-命令模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let boy = Barbecuer()

let command1 = BakeMuttonCommand(barbecuer: boy)
let command2 = BakeMuttonCommand(barbecuer: boy)
let command3 = BakeChickenWingCommand(barbecuer: boy)

let girl = Waiter()
girl.addCommand(command: command1)
girl.addCommand(command: command2)
girl.addCommand(command: command3)

girl.notify()

