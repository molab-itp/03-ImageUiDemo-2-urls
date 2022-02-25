//
// List for scrolling

import SwiftUI

struct Page4: View {
  var body: some View {
    List {
      ForEach(imageItems) { item in
        HStack {
          Image(uiImage: imageFor(string: item.urlStr))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:100, height: 100)
          Text(item.name)
          Spacer()
        }
      }
    }
  }
}

struct Page4_Previews: PreviewProvider {
  static var previews: some View {
    Page4()
  }
}
