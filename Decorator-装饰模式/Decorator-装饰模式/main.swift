//
//  main.swift
//  Decorator-装饰模式
//
//  Created by wangwei on 2019/9/3.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

func show() {
    let persion = XiaoCai(name: "小菜")
    print("第一种装扮")
    
    let sneaker = Sneakers()
    let trouser = BigTrouser()
    let tShirt = TShirts()
    sneaker.decorate(component: persion)
    trouser.decorate(component: sneaker)
    tShirt.decorate(component: trouser)
    tShirt.show()
    
    print("第二种装扮")
    
    let leatherShoes = LeatherShoes()
    let tie = Tie()
    let suit = Suit()
    
    leatherShoes.decorate(component: persion)
    tie.decorate(component: leatherShoes)
    suit.decorate(component: tie)
    suit.show()
}

show()

