//
//  TestSymbolSwitch.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 10/31/22.
//

import SwiftUI

struct TestSymbolSwitch: View {

    @State private var rowImage: String = "sun.max.fill"


    var body: some View {
        Image(systemName: rowImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .symbolRenderingMode(.multicolor)
            .padding()

    }
}

struct TestSymbolSwitch_Previews: PreviewProvider {
    static var previews: some View {
        TestSymbolSwitch()
            .frame(maxWidth: 150, maxHeight: 150)
    }
}
