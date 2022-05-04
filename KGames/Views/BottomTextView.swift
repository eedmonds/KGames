//
//  BottomTextView..swift
//  Code History
//
//  Created by Eric Edmonds on 4/24/22.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView__Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
