import SwiftUI

struct AvaratsView: View {

    // MARK: - Properties

    let urls: [URL?]
    
    @State private var size: CGSize = .zero
    
    private var spacingValue: CGFloat {
        size.width / CGFloat(urls.count) - size.height
    }

    // MARK: - Body

    var body: some View {
        HStack(spacing: spacingValue) {
            ForEach(urls.indices, id: \.self) { value in
                CircleView(imageURL: urls[value])
            }
        }
        .containerReader($size)
    }
}

// MARK: - Content Preview

struct AvaratsView_Previews: PreviewProvider {
    static let avatarURLs = [
        URL(string:"https://i.pravatar.cc/1024"),
        URL(string:"https://i.pravatar.cc/1024"),
        URL(string:"https://i.pravatar.cc/1024"),
        URL(string:"https://i.pravatar.cc/1024")
    ]

    static var previews: some View {
        AvaratsView(urls: avatarURLs)
            .frame(maxHeight: 200)
    }
}
