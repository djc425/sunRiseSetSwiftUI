//
//  ContentView.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 10/17/22.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {

    @State private var locationTapped = true
    @State private var rowTapped: Bool = true

    @State private var sunTest = [
        SunModel(time: "6:45am", imageName: "sunrise.fill", id: 0),
        SunModel(time: "7:14pm", imageName: "sunset.fill", id: 1)
    ]

    @State private var dayTest = DayLength(dayLength: "12 hrs and change")

    var body: some View {

        VStack {
            HStack {
                Spacer()

                LocationButton {
                    withAnimation {
                        locationTapped.toggle()
                    }
                    print(locationTapped)
                }
                .symbolVariant(.fill)
                .labelStyle(.iconOnly)
                .clipShape(Circle())
                .foregroundColor(.white)
                .padding()

            }
            Spacer()
            if locationTapped {
                VStack {

                    Section {
                        ForEach(sunTest) { test in
                            SunRow(sunInfo: test)
                                .onTapGesture {
                                    withAnimation {
                                        if test.id == 0 {
                                            rowTapped = true
                                        } else {
                                            rowTapped = false
                                        }
                                    }
                                }
                        }
                    }

                    .padding(EdgeInsets(
                        top: 0,
                        leading: 20,
                        bottom: 30,
                        trailing: 20))
                    .listRowSeparator(.hidden)

                    Text(dayTest.dayLength)
                        .font(.custom("futura", size: 18))
                        .foregroundColor(.gray)
                        .padding(EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 70,
                            trailing: 0))
                }

                Spacer()

            }
        }
        .background(Image(rowTapped ? "sunshine" : "sunset"))
    }

    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
