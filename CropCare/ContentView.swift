

import CoreML
import PhotosUI
import SwiftUI

struct ContentView: View {

    @StateObject var imagePicker = ImagePicker()


    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.green, Color(red: 0.5, green: 0.8, blue: 0.6)]),
                center: .center, startRadius: 2.0, endRadius: 600.0
            )
                      
            .ignoresSafeArea()
            
            if imagePicker.image != nil {
                ImageView(userImage: imagePicker.image!, userUIImage: imagePicker.UserUIImage!)

            } else {
                VStack {
                    Spacer()

                    Image("final-image")
                        .resizable()
                        .frame(width: 240.0, height: 240.0)
                        .clipShape(RoundedRectangle(cornerRadius: 52))

                    Text("CropCare").font(.title)
                    Text("by Ritik Karma").font(.caption)


                    Spacer()


                    PhotosPicker(
                        selection: $imagePicker.imageSelection,
                        matching: .images
                    ) {


                        Text("Select Photo from Photos")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }

                    Spacer()

     
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
