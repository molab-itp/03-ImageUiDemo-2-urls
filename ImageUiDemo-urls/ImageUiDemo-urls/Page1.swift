//
//  UIImage from URL

import SwiftUI

// Array of image url strings
let imageArray = [
  "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/dan-osullivan1.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/alumni/ari_headshot.jpg.preset.square.jpeg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/GabePattern5.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/Sarah-Rothberg.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/clay-shirky.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/GeneralPics/katherinedillon.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/alumni/pedro.galvao.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/Luisa-Pereira.jpg.preset.square.jpeg",
  "https://tisch.nyu.edu/content/dam/tisch/itp/alumni/raaziq-brown.jpg.preset.square.jpeg?",
  "https://jht1493.net/a1/skt/assets/webdb/jht/IMG_4491.JPEG",
  "https://jht1493.net/a1/skt/assets/webdb/jht/IMG_7555.JPEG",
]

struct Page1: View {
  var body: some View {
    VStack {
      ForEach(0 ..< 8) { index in
        // Image(uiImage: imageFor(index: index))
        // .resizable()
        // .frame(width:100, height: 100)
        let urlStr = imageArray[index % imageArray.count]
        AsyncImage(url: URL(string: urlStr)) { phase in
          if let image = phase.image {
            image // Displays the loaded image.
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width:100, height: 100)
          } else if phase.error != nil {
            Color.red // Indicates an error.
          } else {
            Color.blue // Acts as a placeholder.
          }
        }
      }
    }
  }
}

// Read in an image from the array of url strings
func imageFor( index: Int) -> UIImage {
  let urlStr = imageArray[index % imageArray.count]
  return imageFor(string: urlStr)
}

// Read in an image from a url string
func imageFor(string str: String) -> UIImage {
  let url = URL(string: str)
  // Read the image url as a bag of bits
  let imgData = try? Data(contentsOf: url!)
  // Convert image bits to UIImage object
  let uiImage = UIImage(data:imgData!)
  return uiImage!
}


#Preview {
  Page1()
}

// https://tisch.nyu.edu/about/directory
