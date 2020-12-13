//
//  SaladCompletedView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

struct SaladCompletedView: View {
    var body: some View {
        VStack {
            Text("Ready!")
            Image("salad")
            Text("Enjoy!")
        }
    }
}

struct SaladCompletedView_Previews: PreviewProvider {
    static var previews: some View {
        SaladCompletedView()
    }
}
