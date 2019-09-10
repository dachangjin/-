//
//  main.swift
//  Bridge-桥接模式
//
//  Created by wangwei on 2019/9/9.
//  Copyright © 2019 WW. All rights reserved.
//

var ab: HandsetBrand

ab = HandsetBrandN(soft: HandsetGame())
ab.run()
ab.setSoft(soft: HandsetAddressList())
ab.run()
ab = HandsetBrandM(soft: HandsetGame())
ab.run()
ab.setSoft(soft: HandsetAddressList())
ab.run()







