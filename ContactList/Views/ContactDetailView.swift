//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Максим Самусь on 26.05.2022.
//

import SwiftUI

struct ContactDetailView: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 200, height: 200, alignment: .top)
        Spacer()
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView()
    }
}
