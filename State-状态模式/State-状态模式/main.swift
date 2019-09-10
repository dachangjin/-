//
//  main.swift
//  State-状态模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let work = Work()

work.hour = 9
work.writeProgram()
work.hour = 10
work.writeProgram()
work.hour = 12
work.writeProgram()
work.hour = 13
work.writeProgram()
work.hour = 14
work.writeProgram()
work.hour = 17
work.writeProgram()
//work.finished = true
work.finished = false
work.writeProgram()
work.hour = 19
work.writeProgram()
work.hour = 22
work.writeProgram()
