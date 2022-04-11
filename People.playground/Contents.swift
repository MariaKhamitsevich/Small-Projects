import UIKit
import Foundation

class People {
    var name: String
    var height: Double
    var weight: Double
    var sex: Sex
    
    enum Sex: String {
        case woman = "woman"
        case man = "man"
    }
    
    init(name: String, height: Double, weight: Double, sex: Sex) {
        self.name = name
        self.height = height
        self.weight = weight
        self.sex = sex
    }
    
    func say() -> String{
        "say something"
    }
}

class Cook: People {
    override func say() -> String{
        "I'm cook"
    }
}

class Meneger: People {
    override func say() -> String{
        "I'm manager"
    }
}

class Fighter: People {
    override func say() -> String{
        "I'm fighter"
    }
}

let cook = Cook(name: "Mark", height: 1.72, weight: 75, sex: .man)
let meneger = Meneger(name: "Liza", height: 1.60, weight: 47, sex: .woman)
let fighter = Fighter(name: "Kris", height: 1.80, weight: 87, sex: .man)

var arrayOfPeople = [cook, meneger, fighter]

func printDiscription() {
for person in arrayOfPeople {
    print("\(person.name) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
    print(person.say())
}
}

class Nurse: People {
    var surname: String
    var fullName: String {
        "Nurse, \(name) \(surname)"
    }
    
    init(name: String, surname: String, height: Double, weight: Double, sex: People.Sex) {
        self.surname = surname
        super.init(name: name, height: height, weight: weight, sex: sex)
    }
    override func say() -> String{
        return ("\(super.say()) \nI'm nurse")
}
}

var nurse = Nurse(name: "Diana", surname: "Smitt", height: 1.55, weight: 45, sex: .woman)
arrayOfPeople.append(nurse)

for person in arrayOfPeople {
    if let person = person as? Nurse {
        print("\(person.fullName) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
        print(person.say())
    } else {
        print("\(person.name) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
        print(person.say())}
}

for person in arrayOfPeople.reversed() {
    if let person = person as? Nurse {
        print("\(person.fullName) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
        print(person.say())
    } else {
        print("\(person.name) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
        print(person.say())}
}

class Marsianin {
    enum Color {
        case yellow
        case black
        case green
    }
    
    var colorOfSkin: Color
    var nickname: String
    
    init(colorOfSkin: Color, nickname: String) {
        self.colorOfSkin = colorOfSkin
        self.nickname = nickname
    }
    
    func say() -> String {
        "Hello Mars!"
    }
}

class SmallMarsianin: Marsianin {
    override func say() -> String {
        "???"
    }
}

class BigMarsianin: Marsianin {
    override func say() -> String {
        "Every big marsianin should eat"
    }
}
let mars1 = Marsianin(colorOfSkin: .black, nickname: "Ab")
let small1 = SmallMarsianin(colorOfSkin: .green, nickname: "Lino")
let big1 = BigMarsianin(colorOfSkin: .yellow, nickname: "N32")

var newArray: [Any] = []
newArray.append(nurse)
newArray.append(mars1)
newArray.append(small1)

for object in newArray {
    print(type(of: object))
    
    if let _ = object as? People {
        for person in arrayOfPeople.reversed() {
            if let person = person as? Nurse {
                print("\(person.fullName) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
                print(person.say())
            } else {
                print("\(person.name) is \(person.sex.rawValue), height is \(person.height) m, weight is \(person.weight) kg")
                print(person.say())}
        }
    } else if let object = object as? Marsianin {
        print(object.colorOfSkin)
        print(object.say())
    }
}

arrayOfPeople //4
var arrayOfMars: [Marsianin] = [mars1, small1, big1] //3
arrayOfPeople.count

func printArrays() {
    if arrayOfPeople.count >= arrayOfMars.count {
        for i in (1...arrayOfPeople.count) {
            print(arrayOfPeople[i-1].say())
            if i <= arrayOfMars.count {
                print(arrayOfMars[i-1].say())
            }
        }
    } else {for i in (1...arrayOfMars.count) {
        print(arrayOfMars[i-1].say())
        if i <= arrayOfPeople.count {
            print(arrayOfPeople[i-1].say())
}
    }
}
}

printArrays()
newArray.append(cook)
newArray.sort(by: {(first: Any, second: Any) -> Bool in
    if let first = first as? People,
    let second = second as? People {
        return first.name < second.name
    } else if let first = first as? Marsianin,
         let second = second as? Marsianin {
        return first.nickname < second.nickname
    } else if let first = first as? People,
              let second = second as? Marsianin {
        return first.name < second.nickname
    } else if let first = first as? Marsianin,
    let second = second as? People {
        return first.nickname < second.name
    } else {
        return false
    }
})
newArray
//var element: [String] = newArray.map({element -> String in
//    switch element {
//    case let people as People:
//        return people.name
//    case let marsianin as Marsianin:
//        return marsianin.nickname
//    default:
//        return ""
//    }
//})

for i in newArray {
    if let element = i as? People {
        print(element.name)
    } else if let element = i as? Marsianin {
        print(element.nickname)
    }
}
