//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Person
    
    var body: some View {
        List() {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            DetailedCellView(
                systemName: "phone",
                text: contact.phoneNumber
            )
            DetailedCellView(
                systemName: "tray",
                text: contact.email
            )
            .navigationTitle(contact.fullName)
        }
    }
}

struct ContactDetailViewPreviews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Person(
            name: "",
            surname: "",
            email: "",
            phoneNumber: ""
        )
        )
    }
}
