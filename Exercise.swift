//
//  step1.swift
//  CodeStarterCamp_Week4
//
//  Created by Jiyoung Lee on 2022/05/04.
//

import Foundation

struct Exercise {
    let name: String
    let action: () -> Void
}

var bodyCondition = BodyCondition(upperBodyStrength: 0, lowerBodyStrength: 0, muscularEndurance: 0, fatigue: 0)

let sitUp: Exercise = Exercise(name: "윗몸일으키기") {
    bodyCondition.upperBodyStrength += Int.random(in: 10...20)
    bodyCondition.fatigue += Int.random(in: 10...20)
}

let squat: Exercise = Exercise(name: "스쿼트", action: { () -> Void in
    bodyCondition.lowerBodyStrength += Int.random(in: 20...30)
    bodyCondition.fatigue += Int.random(in: 10...20)
    
})

let longDistance: Exercise = Exercise(name: "오래달리기") {
    bodyCondition.muscularEndurance += Int.random(in: 20...30)
    bodyCondition.upperBodyStrength += Int.random(in: 5...10)
    bodyCondition.lowerBodyStrength += Int.random(in: 5...10)
    bodyCondition.fatigue += Int.random(in: 20...30)
}

let activeRest: Exercise = Exercise(name: "동적 휴식") {
    bodyCondition.fatigue -= Int.random(in: 5...10)
}

let pushUp: Exercise = Exercise(name: "팔굽혀펴기") {
    bodyCondition.upperBodyStrength += Int.random(in: 20...30)
    bodyCondition.fatigue += Int.random(in: 10...20)
}