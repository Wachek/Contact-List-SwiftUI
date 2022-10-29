//
//  ContentView.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 26.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    static private var contactList = Person.getContactList()
    
    var body: some View {

        TabView {
            HomeScreen(contactList: ContentView.contactList)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersList(contactList: ContentView.contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
