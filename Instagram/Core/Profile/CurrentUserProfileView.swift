//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                //header
                VStack(spacing: 10){
                    // pic and status
                    HStack{
                        Image("avatar")
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
                        Text("packchi_203")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("🥰")
                            .font(.footnote)
                        
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
                
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0 ... 15,id: \.self){ index in
                        Image("avatar")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        
            .navigationTitle("packchi_203")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing ){
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
