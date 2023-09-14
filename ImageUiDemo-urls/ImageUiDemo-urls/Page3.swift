//
//  Item struct for more info about image

import SwiftUI

import UIKit

struct Item : Identifiable {
  let id = UUID()
  var urlStr:String
  var name:String
}

// Array of image url strings
let imageItems:[Item] = [
  Item(urlStr: imageArray[0], name:"Dan O"),
  Item(urlStr: imageArray[1], name:"Ari"),
  Item(urlStr: imageArray[2], name:"Gabe"),
  Item(urlStr: imageArray[3], name:"Sarah"),
  Item(urlStr: imageArray[4], name:"Clay"),
  Item(urlStr: imageArray[5], name:"Katherine"),
  Item(urlStr: imageArray[6], name:"Pedro"),
  Item(urlStr: imageArray[7], name:"Luisa"),
  Item(urlStr: imageArray[8], name:"Raaziq"),
  Item(urlStr: imageArray[9], name:"jht"),
  Item(urlStr: imageArray[10], name:"jht"),
]


struct Page3: View {
  var body: some View {
    VStack {
      ForEach(imageItems) { item in
        HStack {
          Image(uiImage: imageFor(string: item.urlStr))
            .resizable()
            .frame(width:100, height: 100)
          Text(item.name)
          Spacer()
        }
      }
    }
  }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
