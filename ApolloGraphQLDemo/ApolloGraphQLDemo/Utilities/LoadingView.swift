//
//  LoadingView.swift
//  ApolloGraphQLDemo
//
//  Created by Faran Rasheed on 6/18/22.
//

import SwiftUI


struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .gray))
            .scaleEffect(1.5)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
