//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismis
    
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create A Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Password",text: $password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top   )
            
            NavigationLink{
               ComplateSignUpView()
                    .navigationBarBackButtonHidden()
                
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            } .padding(.vertical)
            Spacer()
           
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismis()
                    }
                    
            }
        }
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
