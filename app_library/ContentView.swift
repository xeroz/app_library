//
//  ContentView.swift
//  app_library
//
//  Created by juan on 9/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var showHome = true
    @State var showExplore = false
    @State var showLibrary = false
    @State var showProfile = false
    
    var body: some View {
        ZStack{
            
            if showHome {
                DiscoverView()
            }
            
            if showExplore {
                ExploreView()
            }
            
            if showLibrary {
                LibraryView()
            }

            HStack{
                HStack{
                    Image(showHome ? "icon_home_select" : "icon_home")
                        .padding()
                        .onTapGesture{
                            if !self.showHome {
                                self.showHome = true
                                self.showExplore = false
                                self.showLibrary = false
                                self.showProfile = false
                            }
                        }

                    Spacer()
                    Image(showExplore ? "icon_explore_select" : "icon_explore")
                        .padding()
                        .onTapGesture{
                            if !self.showExplore {
                                self.showExplore = true
                                self.showHome = false
                                self.showLibrary = false
                                self.showProfile = false
                            }
                        }

                    Spacer()
                    Image(showLibrary ? "icon_saved_select" : "icon_saved")
                        .padding()
                        .onTapGesture{
                            if !self.showLibrary {
                                self.showLibrary = true
                                self.showExplore = false
                                self.showHome = false
                                self.showProfile = false
                            }
                        }

                    Spacer()
                    Image(showProfile ? "icon_contacts_select" : "icon_contacts")
                        .padding()
                        .onTapGesture{
                            if !self.showProfile {
                                self.showProfile = true
                                self.showLibrary = false
                                self.showExplore = false
                                self.showHome = false
                            }
                        }
                }
                .padding(.horizontal)
                .frame(width: 350)

            }
            .frame(width: 410, height: 80)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .offset(x: 0, y: 410)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
