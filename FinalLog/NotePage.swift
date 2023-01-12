//
//  NotePage.swift
//  FinalLog
//
//  Created by Maha Saleh Alghamdi on 16/06/1444 AH.
//

import SwiftUI

struct NotePage: View {
    @FocusState private var keyboardFocused: Bool
    @State private var profileText = "  "
    var body: some View {
        //   NavigationStack {
        VStack(alignment: .leading ){
            
            Text(" write your words")
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, alignment: .leading).padding()
                .font(.custom("Apple SD Gothic Neo", size: 30))
            
                .foregroundColor(Color("p2"))
            Spacer()
            
            
            
            TextEditor(text: $profileText)
                .foregroundColor(Color("p1"))
                .padding(.horizontal)
            
            Button(action: {
                print("button pressed")
            }, label: {
                Text( "Save")
                    .foregroundColor(.white)
                    .font(.custom("Apple SD Gothic Neo", size: 28))
                    .bold().padding(35)
            .background(Color("p1"))
                .cornerRadius(28)
                .padding()
            })
            .padding(.leading, 130.0)
            
        }
    }
                       
            
        }
    


struct NotePage_Previews: PreviewProvider {
   

    static var previews: some View {
        NotePage()
    }
}
