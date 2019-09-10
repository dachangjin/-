//
//  Memento.swift
//  Memento-备忘录模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

//角色状态备忘录，用来保存某一时刻角色的状态属性
class RoleStateMemento {
    var life: Int
    var offense: Int
    var defense: Int
    init(life: Int, offense: Int, defense: Int) {
        self.life = life
        self.offense = offense
        self.defense = defense
    }
}


class Role {
    var life: Int = 0
    var offense: Int = 0
    var defense: Int = 0
    
    func initialState() {
        life = 100
        offense = 100
        defense = 100
    }
    
    func stateDisplay() {
        print("当前生命:\(life),攻击力:\(offense),防御力:\(defense)")
    }
    
    func fight() {
        life = life - 60
        offense = offense - 50
        defense = defense - 40
    }
    
    func getCurrentState() -> RoleStateMemento {
        return RoleStateMemento(life: life, offense: offense, defense: defense)
    }
    
    func recoveryState(from memento: RoleStateMemento) {
        life = memento.life
        offense = memento.offense
        defense = memento.defense
    }
}

//备忘录维护者，维护备忘录
class RoleStateCaretaker {
    var memento: RoleStateMemento?
}
