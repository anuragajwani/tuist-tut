//
//  ContentView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

enum SaladStatus {
    case notStarted,
         prepping,
         completed
}

struct ContentView: View {
    @State private var saladStatus: SaladStatus = .notStarted
    
    var body: some View {
        switch saladStatus {
        case .notStarted:
            return AnyView(SaladNotStartedView(onPrepareTapped: { self.saladStatus = .prepping }))
        case .prepping:
            return AnyView(SaladPreppingView(onSaladPrepped: { self.saladStatus = .completed }, onCancelSalad: { self.saladStatus = .notStarted }))
        case .completed:
            return AnyView(SaladCompletedView(restart: { self.saladStatus = .notStarted }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
