//
//  DiscoverView.swift
//  app_library
//
//  Created by juan on 9/10/20.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ScrollView{
            
            VStack{
                HStack{
                    Text("Discover")
                        .font(.system(size: 35, weight: .bold))
                    Spacer()
                    
                    Image("search")
                        .padding(.horizontal, 10)
                    Image("subtraction")
                        .padding(.horizontal,10)
                }
                .padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image("layer 1")
                        .frame(width: 310)
                        .background(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                        .padding(.horizontal)
                }
                .padding(.horizontal)
                .overlay(
                    
                    Text("Face the New Experience")
                        .font(.custom("Times New Roman", size: 31))
                        .frame(width: 200)
                        .offset(x: -90)
                    
                )
                
                HStack{
                    Text("New Books Release")
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                .padding(.bottom)
                
                HStack(spacing: 20){
                    BookView()
                    BookView()
                }
                .padding(.bottom)
                
                HStack(spacing: 20){
                    BookView()
                    BookView()
                }
                .padding(.bottom)
                
                HStack(spacing: 20){
                    BookView()
                    BookView()
                }
                .padding(.bottom)
            }
        }
     
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
