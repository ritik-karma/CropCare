

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView().scaleEffect(1.4).tint(Color.red)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
