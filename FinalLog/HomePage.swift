/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct HomePage: View {
    @Binding var logs: [Dailylog]
    @State private var isPresentingNewlogView = false
    @State private var newlogData = Dailylog.Data()
    @State var isShowing = false
    
    var body: some View {
        if isShowing == true {
            List {
                ForEach($logs) { $log in
                    NavigationLink(destination: NotePage()) {
                        CardView(log: log)
                    }
                    .listRowBackground(log.theme.mainColor)
                }
            }
            .navigationTitle("Daily log")
            .toolbar {
                Button(action: {
                    isPresentingNewlogView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New log")
            }
            .sheet(isPresented: $isPresentingNewlogView) {
                NavigationView {
                    DetailEditView(data: $newlogData)
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button("Dismiss") {
                                    isPresentingNewlogView = false
                                    newlogData = Dailylog.Data()
                                }
                            }
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Add") {
                                    let newlog = Dailylog(data: newlogData)
                                    logs.append(newlog)
                                    isPresentingNewlogView = false
                                    newlogData = Dailylog.Data()
                                }
                            }
                        }
                }
            }
        } else {
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
                    
                        .foregroundColor(Color("p1"))
                    Group {
                        Text("lo")
                            .foregroundColor(Color("p1"))
                            .font(.custom("Apple SD Gothic Neo", size: 59)).bold() +
                        Text("g ,")
                            .bold()
                            .font(.custom("Apple SD Gothic Neo", size: 59))
                            .foregroundColor(Color("p2"))
                    }
                    
                    .padding()
                    
                    Group{ Text("Where you can write notes ")
                            .font(.custom("Apple SD Gothic Neo", size: 24))
                            .foregroundColor(Color("p1"))
                      
                        
                        
                        
                    }
                  
                    
                    Spacer()
                    
                }
                Button(action:{ isShowing = true}, label: {
                    Text( "Start")
                        .foregroundColor(.white)
                        .font(.custom("Apple SD Gothic Neo", size: 28))
                        .bold().padding(35)
                }).background(Color("p1"))
                    .cornerRadius(28)
                    .padding()
                
   
                
                
                
                
                
                
                
                
                
                
            }}
        }
        
    
   
}

struct noteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
         HomePage(logs: .constant(Dailylog.sampleData))
        }
    }
}

