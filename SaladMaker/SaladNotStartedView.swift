//
//  SaladNotStartedView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

struct SaladNotStartedView: View {
    let onPrepareTapped: () -> ()
    
    var body: some View {
        VStack {
            Image("bowl").padding()
            Button(action: self.onPrepareTapped, label: {
                Text("Prepare Salad")
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .background(Color.blue)
                    .cornerRadius(5.0)
            })
        }
    }
}

struct SaladNotStartedView_Previews: PreviewProvider {
    static var previews: some View {
        SaladNotStartedView(onPrepareTapped: {
            // start prepping salad
        })
    }
}
