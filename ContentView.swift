//
//  ContentView.swift
//  MyBook
//
//  Created by MacBook Pro on 12/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
        ScrollView{
            HStack{
                Circle()
                    .strokeBorder(Color.blue)
                    .background(Circle().foregroundColor(Color("secondColor")))
                    .frame(width:300, height: 400)
                    .offset(x: -200, y:-50)
            }
            .frame(height:100 )
            HStack{
                
                VStack{
                    Image("01")
                        .resizable()
                        .frame(width: 150, height:150)
                        .cornerRadius(50)
                        .padding()
                }
                Spacer()
                VStack{
                    Text("The Book")
                        .foregroundColor(Color("fontColor"))
                        .fontWeight(.bold)
                        .font(.system(size: 50))
                        
                }
            }
           
            
            
            HStack{
                Text("We have Your Every book")
                    .foregroundColor(Color("fontColor"))
                    .fontWeight(.bold)
                    .font(.system(size: 40))
            }
            .frame(width: 400, height: 200, alignment: .center)
            .background(Color("secondColor"))
            .cornerRadius(20)
            
            Spacer()
            
            
            
            
            
            NavigationLink(destination: topSpacer(),
                label: {
                Text("Login")
                    .fontWeight(.bold)
                    .foregroundColor(Color("fontColor"))
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("secondColor"))
                    .cornerRadius(15)
                
            })
            .padding()
            
    
            
            NavigationLink(destination: Signin(),
                label:  {
                Text("Don’t have account ?")
                    .fontWeight(.bold)
                    .foregroundColor(Color("fontColor"))
                  
                    .cornerRadius(15)
                
            })
            
      
            Circle()
                .strokeBorder(Color.blue)
                .background(Circle().foregroundColor(Color("secondColor")))
                .frame(width: 400, height: 400)
                .offset(x: 200, y:130)
                
               
           
            
        }
        .background(Color("firstColor"))
        .ignoresSafeArea(.all)
     
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
                
        }
    }
}



/**
 NavigationLink(destination: Testing(),
 label: {
     Text("SignUp")
         .font(.headline)
         .frame( height: 50)
         .frame(maxWidth: 250)
         .background(Color.green)
         .cornerRadius(10)
     
 })
 **/
