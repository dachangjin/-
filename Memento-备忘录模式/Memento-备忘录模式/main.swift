//
//  main.swift
//  Memento-备忘录模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

//大战前,初始化角色
let role = Role()
role.initialState()
role.stateDisplay()

//保存角色状态(进度),由于封装在Memento中，我们并不知道具体保存了那些角色数据
let stateAdmin = RoleStateCaretaker()
stateAdmin.memento = role.getCurrentState()

//大战Boss,损耗严重
role.fight()
role.stateDisplay()

//恢复到之前状态
role.recoveryState(from: stateAdmin.memento!)
role.stateDisplay()




