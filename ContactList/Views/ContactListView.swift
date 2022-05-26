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
//        VStack {
//            Text("Contact List:")
//                .font(.largeTitle)
//                .multilineTextAlignment(.leading)
//
            List(contacts, id: \.self) { contact in
                Text("\(contact.fullName)")
//            }

        }
            .listStyle(.plain)
            .navigationTitle("Contact List")
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
