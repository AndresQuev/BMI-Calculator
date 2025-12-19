import SwiftUI

struct IMCResult: View {
    let userWeight: Double
    let userHeight: Double

    @State private var showResult = false

    var bmi: Double {
        BMICalculator.calculate(weight: userWeight, height: userHeight)
    }

    var bmiInfo: (String, String, Color) {
        BMICalculator.result(for: bmi)
    }

    var body: some View {
        VStack(spacing: 32) {

            Text("Your BMI Result")
                .font(.largeTitle)
                .bold()
                .padding(.top, 40)

            VStack(spacing: 16) {

                Text("\(bmi, specifier: "%.2f")")
                    .font(.system(size: 88, weight: .bold))
                    .opacity(showResult ? 1 : 0)
                    .scaleEffect(showResult ? 1 : 0.85)
                    .animation(.easeOut(duration: 0.5), value: showResult)

                Text(bmiInfo.0)
                    .font(.title)
                    .bold()
                    .foregroundColor(bmiInfo.2)
                    .opacity(showResult ? 1 : 0)
                    .animation(.easeIn(duration: 0.6).delay(0.2), value: showResult)

                Text(bmiInfo.1)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .opacity(showResult ? 1 : 0)
                    .animation(.easeIn(duration: 0.6).delay(0.4), value: showResult)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.08), radius: 8)
            .padding(.horizontal)

            Spacer()

            NavigationLink {
                IMCView()
            } label: {
                Text("Recalculate")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 56)
                    .background(Color.accentColor)
                    .cornerRadius(14)
            }
            .buttonStyle(.plain)
            .padding(.horizontal, 40)
            .padding(.bottom, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
        .onAppear {
            showResult = true
        }
    }
}

#Preview {
    NavigationStack {
        IMCResult(userWeight: 80, userHeight: 190)
    }
}
