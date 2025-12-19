import SwiftUI

struct GenderButton: View {
    let title: String
    let systemImage: String
    let gender: Int
    @Binding var selectedGender: Int

    var body: some View {
        let isSelected = gender == selectedGender

        Button {
            withAnimation(.easeInOut(duration: 0.2)) {
                selectedGender = gender
            }
        } label: {
            VStack(spacing: 12) {
                Image(systemName: systemImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .foregroundColor(isSelected ? .white : .primary)

                Text(title)
                    .font(.headline)
                    .foregroundColor(isSelected ? .white : .primary)
            }
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(
                isSelected
                ? Color.accentColor
                : Color(.secondarySystemBackground)
            )
            .cornerRadius(16)
        }
        .buttonStyle(.plain)
    }
}
