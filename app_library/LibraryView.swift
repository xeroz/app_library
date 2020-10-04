//
//  LibraryView.swift
//  app_library
//
//  Created by juan on 9/24/20.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("My Library")
                        .font(.system(size: 35, weight: .bold))

                    Spacer()

                    Image("search")
                        .padding(.horizontal, 10)
                    Image("subtraction")
                        .padding(.horizontal,10)
                }

                HStack(){
                    Image("image_library")
                    Spacer()
                    VStack(){
                        HStack{
                            Text("Jane & Eyre")
                                .font(.system(size: 25, weight: .bold))
                            Spacer()
                        }

                        HStack{
                            Text("Charlotte Bronte")
                                .font(.system(size: 12, weight: .semibold))
                            Spacer()
                        }

                        HStack{
                            Text("Continue Reading")
                                .font(.system(size: 12, weight: .bold))
                                .padding([.top, .leading, .trailing], 5)
                                .padding([.bottom, .leading, .trailing], 5)
                                .padding(.top, 0.5)
                                .border(Color.black, width: 0.5)
                        }
                    }
                    Spacer()
                }

                HStack{
                    Text("All Books")
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }
                .padding(.top, 30)
                
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
            .padding(.horizontal)
           
        }
        
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
