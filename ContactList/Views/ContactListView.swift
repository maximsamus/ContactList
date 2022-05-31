//
//  ContactListView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            NavigationLink(destination: ContactDetailView(contact: contact)) {
                Text(contact.fullName)
            }
        }
        .listStyle(.plain)
    }
}

struct ContactListViewPreviews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
