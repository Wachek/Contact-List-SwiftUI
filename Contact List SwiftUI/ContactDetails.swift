//
//  ContactDetails.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 29.10.2022.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            HStack {
                Image(systemName: "phone")
                Text(person.phoneNumber)
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getPerson())
    }
}
