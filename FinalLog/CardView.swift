/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct CardView: View {
    let log: Dailylog
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(log.title)
                .accessibilityAddTraits(.isHeader)
                .font(.headline)
            Spacer()
        }
        .padding()
        .foregroundColor(log.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var log = Dailylog.sampleData[0]
    static var previews: some View {
        CardView(log: log)
            .background(log.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
