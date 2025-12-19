import SwiftUI

struct BMICalculator {

    static func calculate(weight: Double, height: Double) -> Double {
        weight / pow(height / 100, 2)
    }

    static func result(for bmi: Double) -> (title: String, description: String, color: Color) {
        switch bmi {
        case 0..<18.5:
            return (
                "Underweight",
                "You are below the recommended weight according to BMI.",
                .yellow
            )
        case 18.5..<25:
            return (
                "Normal Weight",
                "You are within the recommended weight range.",
                .green
            )
        case 25..<30:
            return (
                "Overweight",
                "You are above the recommended weight according to BMI.",
                .orange
            )
        case 30...100:
            return (
                "Obesity",
                "You are well above the recommended BMI range.",
                .red
            )
        default:
            return (
                "Error",
                "An unexpected error occurred.",
                .gray
            )
        }
    }
}
