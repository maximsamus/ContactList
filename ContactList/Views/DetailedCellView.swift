//
//  DetailedCellView.swift
//  ContactList
//
//  Created by Максим Самусь on 27.05.2022.
//

import SwiftUI

struct DetailedCellView: View {
    let systemName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct DetailedCellView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedCellView(systemName: "phone", text: "")
    }
}
