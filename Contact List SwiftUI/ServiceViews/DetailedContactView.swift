//
//  DetailedContactView.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 29.10.2022.
//

import SwiftUI

struct DetailedContactView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
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
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(person: Person.getPerson())
    }
}
