import UIKit

enum doorStats {
    case open
    case close
}

enum EngineStats {
    case Start
    case Stop
}

enum lightStats {
    case on
    case off
}


struct SportCar {
    let model: String
    let year: UInt
    let trunkSize: Double
    let bodySize: Double
    var trunkCargo: Double
    var bodyCargo: Double
    var lightStatus: lightStats
    
    var doorStatus: doorStats {
        willSet {
            if newValue == .open {
                print("Двери сейчас откроются")
            } else {
                print("Двери сейчас закроются")
            }
        }
    }
    var engineStatus:EngineStats{
        willSet {
            if newValue == .Start {
                print("Машина будет заведена")
            } else {
                print("Машина остановлена")
            }
        }
    }
    mutating func EngineUse (engineStatus: EngineStats) {
        if engineStatus == .Start {
            print("Включен свет")
            self.lightStatus = .on
        } else {
            print("Выключен свет")
            self.lightStatus = .off
        }
    }
    
    mutating func downCargoTrunc(cargo: Double) {
        if (self.trunkCargo + cargo) <= self.trunkSize {
            self.trunkCargo += cargo
            print ("В багажник погружен объем \(self.trunkCargo).Осталось свободного места\(self.trunkSize-self.trunkCargo)")
        } else {
            print ("Объем \(cargo) не влазит в багажник. Осталось свободного места \(self.trunkSize - self.trunkCargo)")
        }
        
    }
    
    mutating func upCargoTrunc(cargo: Double) {
        if (self.trunkCargo - cargo) >= 0 {
            self.trunkCargo -= cargo
            print ("Из багажника выгружен объем \(cargo).Осталось груза \(self.trunkCargo)")
        } else {
            print ("Превышен объем \(cargo), содержимое груза в багажнике \(self.trunkCargo)")
        }
        
    }
    
    mutating func downCargoBody(cargo: Double) {
        if (self.bodyCargo + cargo) <= self.bodySize {
            self.bodyCargo += cargo
            print ("В машину погружен объем \(self.bodyCargo).Осталось свободного места \(self.bodySize-self.bodyCargo)")
        } else {
            print ("Объем \(cargo) не влазит в машину. Осталось свободного места \(self.bodySize - self.bodyCargo)")
        }
        
    }
    
    mutating func upCargoBody(cargo: Double) {
        if (self.bodyCargo - cargo) >= 0 {
            self.bodyCargo -= cargo
            print ("Из машины выгружен объем \(cargo).Осталось груза \(self.bodyCargo)")
        } else {
            print ("Превышен объем \(cargo), соержимое груза в машину \(self.bodyCargo)")
        }
        
    }
    
    
}


struct TruckCar {
    let model: String // марка/ модель
    let year: UInt // год выпуска
    let trunkSize: Double
    let bodySize: Double
    var trunkCargo: Double
    var bodyCargo: Double
    var lightStatus: lightStats
    
    var doorStatus: doorStats {
        willSet {
            if newValue == .open {
                print("Двери сейчас откроются")
            } else {
                print("Двери сейчас закроются")
            }
        }
    }
    var engineStatus:EngineStats{
        willSet {
            if newValue == .Start {
                print("Машина будет заведена")
            } else {
                print("Машина остановлена")
            }
        }
    }
    mutating func EngineUse (engineStatus: EngineStats) {
        if engineStatus == .Start {
            print("Включен свет")
            self.lightStatus = .on
        } else {
            print("Выключен свет")
            self.lightStatus = .off
        }
    }
    
    mutating func downCargoTrunc(cargo: Double) {
        if (self.trunkCargo + cargo) <= self.trunkSize {
            self.trunkCargo += cargo
            print ("В багажник погружен объем \(self.trunkCargo).Осталось свободного места\(self.trunkSize-self.trunkCargo)")
        } else {
            print ("Объем \(cargo) не влазит в багажник. Осталось свободного места \(self.trunkSize - self.trunkCargo)")
        }
        
    }
    
    mutating func upCargoTrunc(cargo: Double) {
        if (self.trunkCargo - cargo) >= 0 {
            self.trunkCargo -= cargo
            print ("Из багажника выгружен объем \(cargo).Осталось груза \(self.trunkCargo)")
        } else {
            print ("Превышен объем \(cargo), содержимое груза в багажнике \(self.trunkCargo)")
        }
        
    }
    
    mutating func downCargoBody(cargo: Double) {
        if (self.bodyCargo + cargo) <= self.bodySize {
            self.bodyCargo += cargo
            print ("В машину погружен объем \(self.bodyCargo).Осталось свободного места \(self.bodySize-self.bodyCargo)")
        } else {
            print ("Объем \(cargo) не влазит в машину. Осталось свободного места \(self.bodySize - self.bodyCargo)")
        }
        
    }
    
    mutating func upCargoBody(cargo: Double) {
        if (self.bodyCargo - cargo) >= 0 {
            self.bodyCargo -= cargo
            print ("Из машины выгружен объем \(cargo).Осталось груза \(self.bodyCargo)")
        } else {
            print ("Превышен объем \(cargo), соержимое груза в машину \(self.bodyCargo)")
        }
        
    }
    
    
}

var sportCar1 = SportCar.init(model: "Porsch", year: 2020, trunkSize: 800, bodySize: 1650, trunkCargo: 0, bodyCargo: 0, lightStatus: .off, doorStatus:.close, engineStatus: .Stop)

var truckCar1 = TruckCar.init(model: "MAN", year: 2020, trunkSize: 10000, bodySize: 70000, trunkCargo: 1000, bodyCargo: 50, lightStatus: .off, doorStatus:.close, engineStatus: .Stop)

sportCar1.model
sportCar1.doorStatus = doorStats.close
sportCar1.doorStatus
sportCar1.doorStatus = doorStats.open
sportCar1.doorStatus
sportCar1.engineStatus = EngineStats.Start
sportCar1.engineStatus = EngineStats.Stop
sportCar1.downCargoTrunc(cargo: 500)
sportCar1.trunkCargo
sportCar1.downCargoTrunc(cargo: 250)
sportCar1.trunkCargo
sportCar1.downCargoTrunc(cargo: 150)
sportCar1.trunkCargo
sportCar1.upCargoTrunc(cargo: 250)
sportCar1.trunkCargo
sportCar1.upCargoTrunc(cargo: 450)
sportCar1.trunkCargo
sportCar1.upCargoTrunc(cargo: 100)
sportCar1.downCargoBody(cargo: 500)
sportCar1.upCargoBody(cargo: 500)
sportCar1.EngineUse(engineStatus: .Start)
sportCar1.EngineUse(engineStatus: .Stop)

truckCar1.model
truckCar1.doorStatus = doorStats.close
truckCar1.doorStatus
truckCar1.doorStatus = doorStats.open
truckCar1.doorStatus
truckCar1.engineStatus = EngineStats.Start
truckCar1.engineStatus = EngineStats.Stop

// не получилось опять сделать нормально pull request







