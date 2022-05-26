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
        List {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text(contact.phoneNumber)
                }
                HStack {
                    Image(systemName: "tray")
                        .foregroundColor(.blue)
                    Text(contact.email)
                }
                Spacer()
                    .navigationTitle(contact.fullName)
                
            }
            //            .listStyle(.grouped)
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
