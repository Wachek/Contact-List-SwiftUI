//
//  HomeScreen.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 26.10.2022.
//

import SwiftUI

struct HomeScreen: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList, id: \.self) { person in
                NavigationLink(destination: ContactDetails(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(
            contactList: Person.getContactList()
        )
    }
}
