//
//  NumbersListView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct NumbersListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            Section {
                DetailedCellView(
                    systemName: "phone",
                    text: contact.phoneNumber
                )
                DetailedCellView(
                    systemName: "tray",
                    text: contact.email
                )
            } header: {
                Text(contact.fullName)
            }
        }
    }
    
    struct NumbersListViewPreviews: PreviewProvider {
        static var previews: some View {
            NumbersListView(contacts: Person.getContactList())
        }
    }
}
