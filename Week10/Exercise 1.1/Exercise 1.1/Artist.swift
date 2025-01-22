//
//  Artists.swift
//  Exercise 1.1
//
//  Created by labuser on 15/01/2025.
//

import Foundation

struct Artist: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var desc: String
    var website: String
    }
let artists = [
    Artist(name:"Gem",
            image:"gem",
            desc:"邓紫棋（英语：Gloria Tang，1991年8月16号－），又名G.E.M.（“Get Everybody Moving”即“让大家动起来”；而GEM也有“珍宝”之意），本名邓诗颖（英语：Gloria Tang Sze-Wing），出生拉中国上海，四岁时移居英属香港，是一名华语创作歌手。",
            website: "http"),
    Artist(name:"Elon",
            image:"elon",
            desc:"埃隆·里夫·马斯克（英语：Elon Reeve Musk /ˈiːlɔːn/；1971年6月28日—），企业家、商业大亨、英国皇家学会会士[注 2]、美国工程院院士[4]，曾取汉名马谊郎于台湾作为公司登记使用[5][6]。他是SpaceX的创始人、董事长、首席执行官、首席工程师，特斯拉投资人、首席执行官、产品设计师、前董事长，无聊公司创始人，Neuralink、OpenAI联合创始人，同时也是X公司的总技术长、董事长。2022年马斯克以2190亿美元财富成为世界首富。[7]",
            website: "http")
    
]

