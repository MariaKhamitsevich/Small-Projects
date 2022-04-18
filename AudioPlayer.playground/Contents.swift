import UIKit

protocol USB {
    
}

final class AudioPlayer {
    
    class AudioFile {
        var name: String
        var albom: String
        var author: String
        var length: Double
        
        init(name: String, albom: String, author: String, length: Double) {
            self.name = name
            self.albom = albom
            self.author = author
            self.length = length
        }
    }
    
    enum USBDevices {
        case headphones
        case loudspeacers
    }
    
    private class HeadPhones: USB {
        
    }
    
    private class LoudSpeakers: USB {
        
    }
    
    var compositions: [AudioFile] = []
    var currentComposition: Int = 0
    private var usbDevice: USB?
    
    init(compositions: [AudioFile] = []) {
        self.compositions = compositions
    }
    
    func addCompositions(compisitions: [AudioFile]) {
        self.compositions += compisitions
    }
    
    func shuffleCompositions() {
        self.compositions.shuffle()
    }
    
    func numberOfCompositions() {
        print(compositions.count)
    }
    
    func chooseConnectedDevice(_ device: USBDevices?) {
        switch device {
        case .headphones:
            self.usbDevice = HeadPhones()
        case .loudspeacers:
            self.usbDevice = LoudSpeakers()
        case .none:
            self.usbDevice = nil
        }
    }
    
    private func playCurrent() {
        if usbDevice == nil {
        print("Играет композиция с именем \(compositions[currentComposition].name)(\(compositions[currentComposition].albom)). Автор: \(compositions[currentComposition].author)")
        } else if usbDevice is HeadPhones {
            print("В наушниках играет неизвестный звук длительностью \(compositions[currentComposition].length)")
        } else if usbDevice is LoudSpeakers {
            print("В колонках играет неизвестный звук длительностью \(compositions[currentComposition].length)")
        }
    }
    
    func playNext() {
        if compositions.count == 0 {
            print("Композиции не найдены")
        } else if currentComposition == compositions.count - 1 {
            currentComposition = 0
            playCurrent()
        } else {
            currentComposition += 1
            playCurrent()
        }
    }
    
    func playPrevious() {
        if compositions.count == 0 {
            print("Композиции не найдены")
        } else if currentComposition == 0 {
            currentComposition = compositions.count - 1
            playCurrent()
        } else {
            currentComposition -= 1
            playCurrent()
        }
    }
}

var myPlayer = AudioPlayer(compositions: [.init(name: "Hips don't lie", albom: "1", author: "Shakira", length: 3.02), .init(name: "Last Friday night", albom: "2", author: "Katy Perry", length: 3.15)])
myPlayer.addCompositions(compisitions: [.init(name: "Bad gay", albom: "3", author: "Billie Eilish", length: 2.48)])
myPlayer.playNext()
myPlayer.playNext()
myPlayer.playNext()
myPlayer.playNext()
myPlayer.playPrevious()
myPlayer.playPrevious()
myPlayer.chooseConnectedDevice(.loudspeacers)
myPlayer.playNext()

//var anotherPlayer = AudioPlayer()
//anotherPlayer.playNext()

myPlayer.chooseConnectedDevice(.none)
myPlayer.playNext()

myPlayer.numberOfCompositions()
myPlayer.shuffleCompositions()
myPlayer.compositions
myPlayer.shuffleCompositions()
myPlayer.compositions
