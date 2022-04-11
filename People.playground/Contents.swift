import UIKit

class People {
    var name: String
    var height: Double
    var weight: Double
    var sex: Sex
    
    enum Sex {
        case woman
        case man
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

for person in arrayOfPeople {
    print("\(person.name), height is \(person.height) m, weight is \(person.weight) kg")
    print(person.say())
}
