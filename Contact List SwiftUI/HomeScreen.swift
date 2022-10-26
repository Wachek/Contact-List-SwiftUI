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
        VStack {
            List(contactList, id: \.self) { person in
                Text("\(person.name) \(person.lastname)")
            }
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
