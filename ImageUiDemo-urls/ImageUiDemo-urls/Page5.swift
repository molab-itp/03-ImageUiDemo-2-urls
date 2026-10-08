//
// UIImage named from Resource folder

import SwiftUI
import UIKit

/*
 - ui elements: Toggle, Slider, Picker
 - @State
 - Image named in Assets catalog
 - UIImage named in Resource folder
 */

struct Page5: View {
    @State var len = 400.0
    @State var fitFlag = true
    @State var selectedImage = "circle"
    var body: some View {
        VStack() {
            Spacer()
            ZStack {
                //-- image from app bundle
                Image(uiImage: UIImage(named: "jht-cu-2.png")!)
//              jht.jpg
//              jht-cu-1.png
//              jht-cu-2.png
                //-- image from Assets.xcassets
//                Image("jht2025")
//                    .resizable()
//                    .aspectRatio(contentMode: fitFlag ? .fit : .fill)
//                    .frame(width:len, height: len)
                //-- image from SF Symbols
                Image(systemName: selectedImage)
                    .resizable()
                    .frame(width:len, height: len)
            }
            Spacer()
            Toggle(isOn: $fitFlag) {
                Text("Fit")
            }
            Slider(value: $len, in: 100.0...800.0)
            Text("len \(len)")
            Picker("Image systemName", selection: $selectedImage) {
                Text("circle").tag("circle")
                Text("flag").tag("flag")
                Text("ear").tag("ear")
            }
        }
    }
}

#Preview {
    Page5()
}


