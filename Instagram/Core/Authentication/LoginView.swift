//
//  LoginView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 21/07/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                //logo image
                Image("instagram-logo-black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                //text fields
                VStack{
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(IGTextFieldModifier())
                    
                    Button{
                        print("Show Forgot Password")
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing,20)
                    }
                    
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    
                    Button{
                        print("Login")
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360,height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                        
                    }
                    .padding(.vertical)
                    
                    HStack{
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40 , height: 0.5)
                        
                        
                        Text("OR")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40 , height: 0.5)
                        
                    }
                    .foregroundColor(.gray)
                    
                    HStack{
                        Image("facebook-logo")
                            .resizable()
                            .frame(width: 20,height: 20)
                        
                        Text("Continue with Facebook")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemBlue))
                    }
                    .padding(.top, 8)
                    
                    Spacer()
                    
                    Divider()
                    
                    NavigationLink{
                        AddEmailView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing:3){
                            Text("Don't have an account?")
                            
                            Text(" Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical,16)
                }
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
