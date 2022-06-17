//
//  CountryCell.swift
//  ApolloGraphQLDemo
//
//  Created by Faran Rasheed on 6/18/22.
//

import SwiftUI

struct CountryCell: View {
    var country: CountryListQuery.Data.Country
    var body: some View {
        HStack (spacing: 16) {
            Text(country.emoji)
            Text(country.name).bold().font(.system(size: 14))
        }
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: CountryListQuery.Data.Country(
            name: "Pakistan",
            capital: "Islamabad",
            currency: "PKR",
            emoji: "🇵🇰",
            languages: [CountryListQuery.Data.Country.Language(name: "English"),
                        CountryListQuery.Data.Country.Language(name: "urdu")
            ])
        )
    }
}
