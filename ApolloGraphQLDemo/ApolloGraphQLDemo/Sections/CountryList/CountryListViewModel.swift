//
//  CountryListViewModel.swift
//  ApolloGraphQLDemo
//
//  Created by Faran Rasheed on 6/18/22.
//

import Foundation

final class CountryListViewModel: ObservableObject {
    
    @Published var countries: [CountryListQuery.Data.Country] = []
    @Published var isLoading = false

    func loadCountryList() {
        isLoading = true
        let query = CountryListQuery()
        Apollo.shared.client.fetch(query: query) { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false

                switch result {
                case .success(let graphQLResult):
                    if let list = graphQLResult.data?.countries.compactMap({ $0 }) {
                        self.countries = list
                    }
                case .failure(let error):
                    print("Error loading data \(error)")
                }
            }
        }
    }
}
