//
//  main.swift
//  Adapter-适配器模式
//
//  Created by wangwei on 2019/9/5.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let b = Forwards(name: "巴蒂尔")
b.attack()

let m = Guards(name: "麦迪")
b.attack()

//通过翻译者(适配器)实现了外籍球员的调用
let ym = Translator(name: "姚明")
ym.attack()
ym.defense()



