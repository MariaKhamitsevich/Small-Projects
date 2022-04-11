import UIKit

class Wallet{
    
    enum Banknotes: Int {
        case _50 = 50
        case _100 = 100
        case _500 = 500
        case _1000 = 1000
        case _5000 = 5000
    }
    
    var wallet: [Banknotes] = []
    
    init(wallet: [Banknotes]) {
        self.wallet = wallet
    }
    
    func calculateSum() {
        var sum = 0
        for banknote in wallet {
            sum += banknote.rawValue
        }
        print(sum)
    }
}

var myWallet = Wallet(wallet: [._100, ._1000, ._50, ._5000])
myWallet.calculateSum()
