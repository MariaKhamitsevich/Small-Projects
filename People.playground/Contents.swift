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
