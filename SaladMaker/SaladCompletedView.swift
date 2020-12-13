//
//  SaladCompletedView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

struct SaladCompletedView: View {
    let restart: () -> ()
    
    var body: some View {
        VStack {
            Text("Ready!")
            Image("salad")
            Text("Enjoy!")
            Button(action: self.restart, label: {
                Text("Start again")
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .background(Color.blue)
                    .cornerRadius(5.0)
            }).padding()
        }
    }
}

struct SaladCompletedView_Previews: PreviewProvider {
    static var previews: some View {
        SaladCompletedView(restart: {})
    }
}
