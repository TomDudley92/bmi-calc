import UIKit

func calculateBMI(height: Float, weight: Float, imperial: Bool) -> String {

    let bmi = (weight / pow(height, 2))

    let shortendBMI = String(format: "%.2f", bmi)

    var interpretation = ""

    if bmi >= 25 {
        interpretation = " You are overweight"
    }
    else if bmi >= 18.5 {
        interpretation = " You are a healthy weight"
    }
    else {
        interpretation = " You are underweight"
    }

    return "Your BMI is \(shortendBMI).\(interpretation)"
}

func calcBMIInImperial(heightInFeet: Double, heightInInches: Double, weightInPounds: Double) {
    
    let weight = weightInPounds * 0.45359237
    let totalHeight = ((heightInFeet * 12) + heightInInches)
    let height = totalHeight * 0.0254
    
    let bmi = (weight / pow(height, 2))
    print("BMI: \(bmi)")
}

calcBMIInImperial(heightInFeet: 5, heightInInches: 11, weightInPounds: 140)

print("\(calculateBMI(height: 1.9, weight: 65.5, imperial: true))")
