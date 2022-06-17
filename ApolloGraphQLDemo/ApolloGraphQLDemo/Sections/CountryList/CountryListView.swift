//
//  ContentView.swift
//  ApolloGraphQLDemo
//
//  Created by Faran Rasheed on 6/18/22.
//

import SwiftUI

struct CountryListView: View {
    @StateObject private var viewModel = CountryListViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                List(viewModel.countries, id: \.name) { country in
                    CountryCell(country: country)
                }
                .navigationTitle("Countries")
            }
        }.onAppear { viewModel.loadCountryList() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
