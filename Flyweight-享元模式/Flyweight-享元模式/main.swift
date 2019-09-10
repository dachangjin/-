//
//  main.swift
//  Flyweight-享元模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

let f = WebsiteFactory()

let fx = f.getWebsiteCategory(key: "产品展示")
fx.use(user: User(name: "小菜"))

let fy = f.getWebsiteCategory(key: "产品展示")
fy.use(user: User(name: "大鸟"))

let fz = f.getWebsiteCategory(key: "产品展示")
fz.use(user: User(name: "娇娇"))

let fl = f.getWebsiteCategory(key: "博客")
fl.use(user: User(name: "老顽童"))

let fm = f.getWebsiteCategory(key: "博客")
fm.use(user: User(name: "桃谷六仙"))

let fn = f.getWebsiteCategory(key: "博客")
fn.use(user: User(name: "南海鳄神"))

print("得到网站分类总数:\(f.getWebsiteCount())")




