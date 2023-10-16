//
//  TitleView.swift
//  mnexpedicoes
//
//  Created by Bento, Cesar - Admin on 13/10/23.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.system(size: 24))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Title")
    }
}
