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
        VStack {
            Image(systemName: "person.fill")
                .resizable()
            .frame(width: 250, height: 250)
            Spacer()
        }
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: Person.getContactList())
    }
}
