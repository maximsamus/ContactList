//
//  ContactListView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct ContactListView: View {
    var body: some View {
        TabView {
            Image(systemName: "phone")
            ContactListView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Home")
                }
            NumbersListView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Contacts")
                }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
