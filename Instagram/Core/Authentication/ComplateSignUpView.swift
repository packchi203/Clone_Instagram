//
//  ComplateSignUpView.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import SwiftUI

struct ComplateSignUpView: View {
    
    @Environment(\.dismiss) var dismis
    
    
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text("Welcome to instagram , stephan.dowless")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Clink below to complete registration and start using Instagram")
                .font(.footnote)
              
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
           
            Button{
                print("Conplate sign up")
            } label: {
                Text("Conplate Sign Up")
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

struct ComplateSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ComplateSignUpView()
    }
}
