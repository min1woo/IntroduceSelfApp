//
//  Infomation.swift
//  UITest
//
//  Created by 박승환 on 5/27/24.
//

import Foundation

struct Info {
    let name:String             // 이름
    let age:Int                 // 나이
    let area: String            // 사는곳
    let MBTI: String            // MBTI
    let position: String        // 역할
    let introduce: String       // 자기소개
    let blogURL: String         // 블로그 URL
}

class Infomation {
    var peoples = Array<Info>()
    let names = ["김동현", "김광현", "박승환", "유민우", "이주희", "최건"]
    let ages = [20, 21, 22, 23, 24, 25]
    let areas = ["서울", "부산", "대구", "대전", "인천", "광주"]
    let MBTIs = ["ESFJ", "INTJ", "ISFP", "ESTJ", "INFP", "ISFP"]
    let positions = ["팀장", "부팀장", "팀원", "팀원", "팀원", "팀원"]
    let introduces = [
        "화이팅 입니다!",
        "화이팅~!",
        "화이팅!",
        "여러분 화이팅",
        "다들 화이팅 하세요!!",
        "끝까지 화이팅 입니다."
    ]
    let urls = [
        "https://how-dev.tistory.com/",
        "https://leedoseo.tistory.com/",
        "https://shpark0920.tistory.com/",
        "https://shpark0920.tistory.com/",
        "https://velog.io/@leejh950417/posts",
        "https://velog.io/@geon5595/posts"
    ]
    
    // 기본 세팅
    func setting() {
        for i in 0..<6 {
            let people = Info(name: names[i], age: ages[i], area: areas[i], MBTI: MBTIs[i], position: positions[i], introduce: introduces[i], blogURL: urls[i])
            peoples.append(people)
        }
    }
    
    // 사람 검색
    func findUser(_ name: String) -> Info {
        var info: Info = Info(name: "nil", age: 0, area: "nil", MBTI: "nil", position: "nil", introduce: "nil", blogURL: "nil")
        for i in peoples {
            if i.name == name {
                info = i
            }
        }
        return info
    }

}
