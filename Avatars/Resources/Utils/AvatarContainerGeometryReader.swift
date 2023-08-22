import SwiftUI

struct AvatarContainerGeometryReader: ViewModifier {
    
    // MARK: - Properties
    
    @Binding var size: CGSize
    
    // MARK: - Body content
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    Color.clear
                        .onAppear {
                            size = proxy.size
                        }
                }
            )
    }
}
