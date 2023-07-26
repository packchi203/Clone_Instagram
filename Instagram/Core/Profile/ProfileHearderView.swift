//
//  ProfileHearderView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import SwiftUI

struct ProfileHearderView: View {
    let user: User
    
    var body: some View {
    
        //header
        VStack(spacing: 10){
            // pic and status
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80,height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8){
                    UserStartView(value: 3, title: "Post")
                    UserStartView(value: 999, title: "Followers")
                    UserStartView(value: 1, title: "Following")
                }
            }
            .padding(.horizontal)
            
            //name and bio
            VStack{
                if let fullname = user.fullname
                {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
               
                
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.horizontal)
//                .background(.red)
            
            // action button
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay{
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray,lineWidth: 1)
                    }
            }
            Divider()
        }
    }
}

struct ProfileHearderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHearderView(user: User.MOCK_USERS[0])
    }
}
