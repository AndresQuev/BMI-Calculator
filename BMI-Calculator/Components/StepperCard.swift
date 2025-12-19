import SwiftUI

struct StepperCard: View {
    let title: String
    @Binding var value: Int

    var body: some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)

            Text("\(value)")
                .font(.system(size: 40, weight: .bold))

            HStack(spacing: 24) {
                CircleIconButton(systemName: "minus") {
                    if value > 0 { value -= 1 }
                }

                CircleIconButton(systemName: "plus") {
                    value += 1
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 180)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(16)
    }
}
