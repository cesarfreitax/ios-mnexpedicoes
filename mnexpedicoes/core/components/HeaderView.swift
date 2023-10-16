//
//  HeaderView.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 13/10/23.
//

import SwiftUI

struct HeaderView: View {
    var image: UIImage
    var body: some View {
        ZStack {
            Color("beigeBackground")
                .ignoresSafeArea()
            Image(uiImage: image)
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50)
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(image: UIImage(imageLiteralResourceName: "logo-mn"))
    }
}
