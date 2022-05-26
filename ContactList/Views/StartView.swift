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
                        Image(systemName: "person")
                        Text("Home")
                    }
                NumbersListView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Contacts")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
