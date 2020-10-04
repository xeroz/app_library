//
//  ExploreView.swift
//  app_library
//
//  Created by juan on 9/24/20.
//

import SwiftUI

struct ExploreView: View {
    
    
    @State var showClassic = true
    @State var showHistory = false
    @State var showCrime = false
    @State var showCsifi = false
    @State var showFantasty = false
    
    var body: some View {
            
            VStack{
                HStack{
                    Text("Explore")
                        .font(.system(size: 35, weight: .bold))
                        
                    Spacer()
                    
                    Image("search")
                        .padding(.horizontal, 10)
                    Image("subtraction")
                        .padding(.horizontal,10)
                }
                .padding(.horizontal)
                
                HStack{
                    Text("Classic")
                        .foregroundColor(showClassic ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                        .overlay(
                            Rectangle()
                                .frame(width: 79, height: 1)
                                .offset(y: 10)
                                .foregroundColor(showClassic ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                            , alignment: .bottom
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture{
                            if !self.showClassic {
                                self.showClassic = true
                                self.showHistory = false
                                self.showCrime = false
                                self.showCsifi = false
                                self.showFantasty = false
                            }
                        }
                    Spacer()
                    Text("History")
                        .foregroundColor(showHistory ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                        .overlay(
                            Rectangle()
                                .frame(width: 86, height: 1)
                                .offset(y: 10)
                                .foregroundColor(showHistory ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                            , alignment: .bottom
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture{
                            if !self.showHistory {
                                self.showHistory = true
                                self.showClassic = false
                                self.showCrime = false
                                self.showCsifi = false
                                self.showFantasty = false
                            }
                        }
                    Spacer()
                    Text("Crime")
                        .foregroundColor(showCrime ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                        .overlay(
                            Rectangle()
                                .frame(width: 70.5, height: 1)
                                .offset(y: 10)
                                .foregroundColor(showCrime ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                            , alignment: .bottom
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture{
                            if !self.showCrime {
                                self.showHistory = false
                                self.showClassic = false
                                self.showCrime = true
                                self.showCsifi = false
                                self.showFantasty = false
                            }
                        }
                    Spacer()
                    Text("Sci-fi")
                        .foregroundColor(showCsifi ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                        .overlay(
                            Rectangle()
                                .frame(width: 71, height: 1)
                                .offset(y: 10)
                                .foregroundColor(showCsifi ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                            , alignment: .bottom
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture{
                            if !self.showCsifi {
                                self.showHistory = false
                                self.showClassic = false
                                self.showCrime = false
                                self.showCsifi = true
                                self.showFantasty = false
                            }
                        }
                    Spacer()
                    
                    Text("Fantasty")
                        .foregroundColor(showFantasty ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                        .overlay(
                            Rectangle()
                                .frame(width: 80, height: 1)
                                .offset(y: 10)
                                .foregroundColor(showFantasty ? Color(#colorLiteral(red: 0.9294117647, green: 0.1450980392, blue: 0.4039215686, alpha: 1)) : Color(#colorLiteral(red: 0.6768393517, green: 0.6769362688, blue: 0.6768088937, alpha: 1)))
                            , alignment: .bottom
                        )
                        .padding(.horizontal, 5)
                        .onTapGesture{
                            if !self.showFantasty {
                                self.showHistory = false
                                self.showClassic = false
                                self.showCrime = false
                                self.showCsifi = false
                                self.showFantasty = true
                            }
                        }
                }
                .padding()
                
                ScrollView{
                    VStack{
                        HStack{
                            Text("Featured Books")
                                .font(.system(size: 18, weight: .bold))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        
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
                        
                        HStack(spacing: 20){
                            BookView()
                            BookView()
                        }
                        .padding(.bottom)
                    }
                }
                
            }
           
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
