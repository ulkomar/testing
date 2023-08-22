import SwiftUI

extension View {
    func containerReader(_ size: Binding<CGSize>) -> some View {
        modifier(AvatarContainerGeometryReader(size: size))
    }
}
