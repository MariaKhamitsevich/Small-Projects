import UIKit


class Workout {             // тренировка
    let time: Double        // время
    let distance: Double    // дистанция
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {    // бег
    let cadence: Double // темп
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {   // плавание
    let stroke: String  // стиль
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 80, time: 1200, distance: 4000),
    Swim(stroke: "вольный стиль", time: 32.1, distance: 50),
    Swim(stroke: "баттерфляй", time: 36.8, distance: 50),
    Swim(stroke: "вольный стиль", time: 523.6, distance: 500),
    Run(cadence: 90, time: 358.9, distance: 1600)
]
/*:
 
 Напишите функции `describeRun(runningWorkout:)` и `describeSwim(swimmingWorkout:)`, принимающие объекты типа`Run` и `Swim` соответственно.  Ни одна не должна возвращать значений.  Каждая функция должна вывести описание тренировки, включая темп бега, либо стиль плавания.  Время представлено в секундах, расстояние — в метрах, темп — в шагах в минуту.
 */

func describeRun(runningWorkout: Run) {
    print("Темп бега - \(runningWorkout.cadence), время бега - \(runningWorkout.time) секунд, расстояние - \(runningWorkout.distance) метров")
}
func describeSwim(swimmingWorkout: Swim) {
    print("Стиль - \(swimmingWorkout.stroke), время - \(swimmingWorkout.time) секунд, дистанция - \(swimmingWorkout.distance) метров")
}

for element in workouts {
    if let element = element as? Run {
        describeRun(runningWorkout: element)
    } else if let element = element as? Swim {
        describeSwim(swimmingWorkout: element)
    }
}
/*:
 Переберите все тренировки в массиве `workouts` и, с помощью приведения типов, вызовите либо `describeRun(runningWorkout:)`, либо `describeSwim(swimmingWorkout:)` для каждого.  Обратите внимание, что будет выведено в консоль.
 */
