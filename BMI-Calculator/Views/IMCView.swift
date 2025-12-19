import SwiftUI

struct IMCView: View {
    @State private var gender: Int = 0
    @State private var height: Double = 170
    @State private var age: Int = 25
    @State private var weight: Int = 70

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()

                VStack(spacing: 24) {

                    HStack(spacing: 16) {
                        GenderButton(
                            title: "Male",
                            systemImage: "figure.stand",
                            gender: 0,
                            selectedGender: $gender
                        )

                        GenderButton(
                            title: "Female",
                            systemImage: "figure.stand.dress",
                            gender: 1,
                            selectedGender: $gender
                        )
                    }
                    .padding(.horizontal)

                    HeightCalculator(selectedHeight: $height)
                        .padding(.horizontal)

                    HStack(spacing: 16) {
                        StepperCard(title: "Age", value: $age)
                        StepperCard(title: "Weight (kg)", value: $weight)
                    }
                    .padding(.horizontal)

                    IMCCalculateButton(
                        userWeight: Double(weight),
                        userHeight: height
                    )
                    .padding(.horizontal)

                    Spacer()
                }
                .padding(.top)
            }
            .navigationTitle("BMI Calculator")
        }
    }
}

#Preview {
    IMCView()
}
