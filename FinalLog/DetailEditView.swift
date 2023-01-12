/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct DetailEditView: View {
    @Binding var data: Dailylog.Data
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Info")) {
                TextField("Title", text: $data.title)
                ThemePicker(selection: $data.theme)
            }
            }
        }
    }
struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(data: .constant(Dailylog.sampleData[0].data))
    }
}
