//
// NavigationView

import SwiftUI

struct Page4: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink( destination: Page5()) {
                    Text("on Page4")
                        .font(.title)
                        .bold()
                }
                ForEach(imageItems) { item in
                    NavigationLink( destination: ItemDetail(item: item)) {
                        ItemRow(item: item)
                    }
                }
            }
            .navigationTitle("ITP")
        }
    }
}

struct ItemDetail: View {
    var item:Item
    var body: some View {
      VStack {
        // Image(uiImage: imageFor(string: item.urlStr))
        //  .resizable()
        //  .aspectRatio(contentMode: .fit)
        AsyncImage(url: URL(string: item.urlStr)) { phase in
          if let image = phase.image {
            image // Displays the loaded image.
              .resizable()
              .aspectRatio(contentMode: .fit)
            // .frame(width:100, height: 100)
          } else if phase.error != nil {
            Color.red // Indicates an error.
          } else {
            Color.blue // Acts as a placeholder.
          }
          Text(item.label)
          Spacer()
        }
      }
    }
}

struct ItemRow: View {
    var item:Item
    var body: some View {
        HStack {
            // Image(uiImage: imageFor(string: item.urlStr))
            //  .resizable()
            //  .aspectRatio(contentMode: .fit)
            //  .frame(width:100, height: 100)
            ImageThumb(urlString: item.urlStr);
            Text(item.label)
            Spacer()
        }
    }
}

#Preview {
    Page4()
}

