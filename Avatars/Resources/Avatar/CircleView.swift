//
//  CircleView.swift
//  Avatars
//
//  Created by Uladzislau Komar on 22.08.23.
//

import SwiftUI

struct CircleView: View {

    // MARK: - Properties

    let id = UUID()
    let imageURL: URL?
    
    private var randomDefaultColor: Color {
        [Color.gray, Color.red, Color.brown].randomElement() ?? Color.gray
    }

    // MARK: - Body

    var body: some View {
        AsyncImage(url: imageURL) { asyncImagePhase in
            switch asyncImagePhase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
            default:
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(randomDefaultColor)
        .clipShape(Circle())
    }
}

// MARK: - Content Preview

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(imageURL: URL(string:"https://i.pravatar.cc/1024")!)
    }
}
