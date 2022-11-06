//
//  SunRow.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 10/17/22.
//

import SwiftUI


struct SunRow: View {
    let sunInfo: SunModel


    var body: some View {
        HStack() {
            sunInfo.image
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .symbolRenderingMode(.palette)
//                .foregroundStyle(.orange, .yellow)
               // .foregroundColor(Color.yellow)
                .frame(width: 80, height: 60)
                .padding()
            Spacer()
            Text(sunInfo.time)
                .font(.custom("Futura", size: 24))
                .padding()
                .foregroundColor(.gray)
            Spacer()
            Image(systemName: "arrow.right.circle")
                .resizable()
                .foregroundColor(.gray.opacity(50))
                .frame(width: 25, height: 25)
                .padding()
        }
        .background(.clear)
        .cornerRadius(20)
    }
}

struct SunRow_Previews: PreviewProvider {
    static var previews: some View {
        List() {
            Section {
                SunRow(sunInfo: SunModel(time: "7:30pm", imageName: "sunrise.fill", id: 1))
                SunRow(sunInfo: SunModel(time: "7:30pm", imageName: "sunset.fill", id: 1))
            }
            .listRowSeparator(.hidden)
        }
    }
}
