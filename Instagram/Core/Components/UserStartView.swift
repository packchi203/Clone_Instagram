//
//  UserStartView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 20/07/2023.
//

import SwiftUI

struct UserStartView: View {
    let value: Int
    let title :String
    
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text("\(title)")
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UserStartView_Previews: PreviewProvider {
    static var previews: some View {
        UserStartView(value: 12, title: "post")
    }
}
