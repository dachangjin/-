//
//  State.swift
//  State-状态模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class State {
    func writeProgram(w: Work) {}
}

class ForenoonState: State {
    override func writeProgram(w: Work) {
        if w.hour < 12 {
            print("当前时间:\(w.hour)点 上午工作，精神百倍")
        } else {
            w.current = NoonState()
            w.writeProgram()
        }
    }
}

class NoonState: State {
    override func writeProgram(w: Work) {
        if w.hour < 13 {
            print("当前时间:\(w.hour)点 午饭; 犯困。")
        } else {
            w.current = AfternoonState()
            w.writeProgram()
        }
    }
}

class AfternoonState: State {
    override func writeProgram(w: Work) {
        if w.hour < 17 {
            print("当前时间:\(w.hour)点 下午状态还不错，继续努力")
        } else {
            w.current = EveningState()
            w.writeProgram()
        }
    }
}

class EveningState: State {
    override func writeProgram(w: Work) {
        if w.finished {
            w.current = RestState()
            w.writeProgram()
        } else {
            if w.hour < 21 {
                print("当前时间:\(w.hour)点 加班哦，疲惫至极")
            } else {
                w.current = SleepingState()
                w.writeProgram()
            }
        }
    }
}

class SleepingState: State {
    override func writeProgram(w: Work) {
        print("当前时间:\(w.hour)点 不行了，睡着了")
    }
}

class RestState: State {
    override func writeProgram(w: Work) {
        print("当前时间:\(w.hour)点 下班回家")
    }
}


class Work {
    var current: State
    var hour = 0
    var finished = false
    init() {
        current = ForenoonState()
    }
    
    func writeProgram() {
        current.writeProgram(w: self)
    }
}
