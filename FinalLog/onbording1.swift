//
//  onbording1.swift
//  FinalLog
//
//  Created by Maha Saleh Alghamdi on 16/06/1444 AH.
//

import SwiftUI

struct onbording1: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack {
                    Image("lo1")
                    
                        .resizable()
                        .frame(width:250,height:250)
                        .aspectRatio( contentMode:.fit)
                    Spacer()
                    
                }
                
                VStack(alignment: .leading){
                    
                    Text("Welcome to")
                        .font(.custom("Apple SD Gothic Neo", size: 29)) .bold()
                    
                        .foregroundColor(Color("LightOrange"))
                    Group {
                        Text("lo")
                            .foregroundColor(Color("LightOrange"))
                            .font(.custom("Apple SD Gothic Neo", size: 59)).bold() +
                        Text("g ,")
                            .bold()
                            .font(.custom("Apple SD Gothic Neo", size: 59))
                            .foregroundColor(Color("LightGreen"))
                    }
                    
                    .padding()
                    
                    Group{ Text("Where you can write notes ")
                            .font(.custom("Apple SD Gothic Neo", size: 24))
                            .foregroundColor(Color("LightOrange")) +
                        Text("Voice ")
                            .font(.custom("Apple SD Gothic Neo", size: 24))
                            .bold()
                            .foregroundColor(Color("LightGreen"))
                        
                        
                        
                    }
                    
                    Spacer()
                    
                }
                NavigationLink(destination:ContentView().navigationBarBackButtonHidden(true)  ){
                    Text( "Start")
                        .foregroundColor(.white)
                        .font(.custom("Apple SD Gothic Neo", size: 28))
                        .bold().padding(35)
                }.background(Color("LightOrange"))
                    .cornerRadius(28)
                    .padding()
                
                
                
                
                
                
                
                
                
                
            }}}
}

struct onbording1_Previews: PreviewProvider {
    static var previews: some View {
        onbording1()
    }
}
