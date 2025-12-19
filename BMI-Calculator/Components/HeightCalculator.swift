import SwiftUI

struct HeightCalculator: View {
    @Binding var selectedHeight: Double

    var body: some View {
        VStack(spacing: 12) {
            Text("Height (cm)")
                .font(.headline)
                .foregroundColor(.secondary)

            Text("\(Int(selectedHeight))")
                .font(.largeTitle)
                .bold()

            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .tint(.accentColor)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(16)
    }
}
