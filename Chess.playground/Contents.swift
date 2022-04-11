import UIKit

struct Chess {
enum Figure {
    case слон(color: Color)
    case ладья(color: Color)
    case ферзь(color: Color)
    case конь(color: Color)
    case король(color: Color)
    case пешка(color: Color)
}
    
    enum Color: String{
        case white = "белый"
        case black = "черный"
    }
    
    var chessFigure: Figure
    
    init(chessFigure: Figure){
        self.chessFigure = chessFigure
    }
    
    
    func printDiscription(){
        switch chessFigure {
        case let .ладья(color: color):
            print("Это ладья цвета \(color.rawValue)")
        case let .слон(color: color):
            print("Это слон цвета \(color.rawValue)")
        case let .ферзь(color: color):
            print("Это ферзь цвета \(color.rawValue)")
        case let .конь(color: color):
            print("Это конь цвета \(color.rawValue)")
        case let .король(color: color):
            print("Это король цвета \(color.rawValue)")
        case let .пешка(color: color):
            print("Это пешка цвета \(color.rawValue)")
        }
    }
}

var peshka = Chess(chessFigure: .ладья(color: .black))
peshka.printDiscription()
