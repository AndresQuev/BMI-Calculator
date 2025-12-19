import SwiftUI

struct IMCCalculateButton: View {
    let userWeight: Double
    let userHeight: Double

    var body: some View {
        NavigationLink {
            IMCResult(userWeight: userWeight, userHeight: userHeight)
        } label: {
            Text("Calculate BMI")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 56)
                .background(Color.accentColor)
                .cornerRadius(14)
        }
        .buttonStyle(.plain)
    }
}
