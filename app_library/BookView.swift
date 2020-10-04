//
//  BookView.swift
//  app_library
//
//  Created by juan on 9/10/20.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        VStack{
            Image("image")
            
            HStack{
                Text("Pride & Prejudice")
                    .font(.system(size: 15, weight: .bold))
                Spacer()
                
            }
            
            HStack{
                Text("Jane Austen")
                    .font(.system(size: 9, weight: .bold))
                Spacer()
                
            }
            
        }
        .frame(width: 158)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
