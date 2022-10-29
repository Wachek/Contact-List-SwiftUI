//
//  NumbersList.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 29.10.2022.
//

import SwiftUI

struct NumbersList: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contactList) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text(person.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.blue)
                            Text(person.email)
                        }
                    }
                }
            }
            .navigationTitle("Contact list")
        }
    }
}

struct NumbersList_Previews: PreviewProvider {
    static var previews: some View {
        NumbersList(contactList: Person.getContactList())
    }
}
