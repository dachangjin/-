//
//  TemplateMethod.swift
//  TemplateMethod-模板方法模式
//
//  Created by wangwei on 2019/9/4.
//  Copyright © 2019 WW. All rights reserved.
//

import Foundation

class TestPaper {
    func testQuestion1() { print("杨过得到，后来给了郭靖，炼成倚天剑、屠龙刀的玄铁可能是[]a.球磨铸铁b.马口铁c.高速合金钢d.碳素纤维")
        print(answer1())
    }
    
    func testQuestion2() { print("杨过、程英、陆无双铲除了情花，造成[]a.使这种植物不再害人b.使一种珍稀物种灭绝c.破坏了那个生物圈的生态平衡d.造成该地区沙漠化")
        print(answer2())
    }
    
    func testQuestion3() { print("蓝凤凰致使华山师徒、桃谷六仙呕吐不止，如果你是大夫，会给他们开什么药[]a.阿司匹林b.牛黄解毒片c.氟哌酸d.让他们喝大量的生牛奶e.以上全不对")
        print(answer3())
    }
    
    func answer1() -> String {
        return ""
    }
    
    func answer2() -> String {
        return ""
    }
    
    func answer3() -> String {
        return ""
    }
}

//学生A的答卷
class TestPaperA: TestPaper {
    override func answer1() -> String {
        return "答案: b"
    }
    
    override func answer2() -> String {
        return "答案: c"
    }
    
    override func answer3() -> String {
        return "答案: a"
    }
}

//学生B的答卷
class TestPaperB: TestPaper {
    override func answer1() -> String {
        return "答案: c"
    }
    
    override func answer2() -> String {
        return "答案: a"
    }
    
    override func answer3() -> String {
        return "答案: a"
    }
}
