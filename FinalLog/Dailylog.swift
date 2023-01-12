/*
See LICENSE folder for this sample’s licensing information.
*/

import Foundation

struct Dailylog: Identifiable {
    let id: UUID
    var title: String
    var theme: Theme
  
    
    init(id: UUID = UUID(), title: String, theme: Theme) {
        self.id = id
        self.title = title
        self.theme = theme
    }
}

extension Dailylog {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
       
        var theme: Theme = .p1
    }
    
    var data: Data {
        Data(title: title,  theme: theme)
    }
    
   
    
    init(data: Data) {
        id = UUID()
        title = data.title
        theme = data.theme
    }
    
}

extension Dailylog {
    static let sampleData: [Dailylog] =
    [
        Dailylog(title: "Shopping🛍️", theme: .p1),
        Dailylog(title: "Reading📖", theme: .p2),
        Dailylog(title: "To-Do📝", theme: .p3)
    ]
}
