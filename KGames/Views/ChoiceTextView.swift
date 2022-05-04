//
//  ChoiceTextView.swift was implemented so we don't repeat our selfes  in the content view
//
//  Created by Eric Edmonds on 3/24/22.
//

import SwiftUI

struct ChoiceTextView: View {
    var choiceText : String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 245/255)
    
    var body: some View {
        Text(choiceText)
                .font(.body)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!") // add choiceText argument
    }
}
