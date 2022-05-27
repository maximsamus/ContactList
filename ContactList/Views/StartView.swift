//
//  StartView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct StartView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                NumbersListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct StartViewPreviews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
