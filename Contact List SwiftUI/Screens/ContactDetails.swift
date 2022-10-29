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
        DetailedContactView(person: person)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getPerson())
    }
}
