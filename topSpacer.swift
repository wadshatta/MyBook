//
//  topSpacer.swift
//  MyBook
//
//  Created by MacBook Pro on 12/05/2022.
//

import SwiftUI

struct topSpacer: View {
    @State var isLoginMode = false
    @State var Email : String = ""
    @State var Password : String = ""
    var body: some View {
        ScrollView{
            Spacer()
            HStack{
                VStack{
                    Image("01")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                        .cornerRadius(100)
                    
                }.padding(50)
            }
            .foregroundColor(Color("fontColor"))
            
            VStack{
              
                
                
                TextField("Emaill", text: $Email)
                    .frame(height: 55)
                    .background(Color.teal)
                    .cornerRadius(10)
                    .padding(.horizontal,5)

                ZStack{
                                    
                        }
                .padding(10)

                
                TextField("Password", text: $Password)
                    .frame(height: 55)
                    .background(Color.teal)
                    .cornerRadius(10)
                    .padding(.horizontal,5)
                
                
                
                NavigationLink(destination: AddView(),
                label: {
                    Text("SignUp")
                        .font(.headline)
                        .frame( height: 50)
                        .frame(maxWidth: 250)
                        .background(Color("secondColor"))
                        .cornerRadius(10)
                    
                })
                    .padding(50)
                    .cornerRadius(10)
                
                
                
                
                
                
            }
            .foregroundColor(Color("fontColor"))
            
        }
        .background(Color("firstColor"))
        .ignoresSafeArea(.all)
        .foregroundColor(Color("fontColor"))
    }
       
}

struct topSpacer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            topSpacer()
               
        }

        
    }
}
