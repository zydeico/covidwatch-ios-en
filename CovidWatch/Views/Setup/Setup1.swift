//
//  Created by Zsombor Szabo on 04/05/2020.
//  
//

import SwiftUI

struct Setup1: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            Image("People Network")
                .padding(.top, .headerHeight)
            
            Text("Privately Connect")
                .modifier(TitleText())
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 2 * .standardSpacing)
            
            Text("The app uses Bluetooth to collect data when other phones with Covid Watch apps are nearby. The generated information stays on your phone.")
                .modifier(SubtitleText())
                .padding(.vertical, .standardSpacing)
                .padding(.horizontal, 2 * .standardSpacing)
            
            Button(action: {
                self.userData.isExposureNotificationSetup = true
                ApplicationController.shared.startExposureNotification(
                    notifyUserOnError: true
                )
            }) {
                Text("Allow Exposure Notifications").modifier(CallToAction())
            }.frame(minHeight: .callToActionButtonHeight)
                .padding(.top, 2 * .standardSpacing)
                .padding(.bottom, .standardSpacing)
                .padding(.horizontal, 2 * .standardSpacing)
            
            Text("This is required for the app to work.")
                .modifier(SubCallToAction())
                .padding(.horizontal, 2 * .standardSpacing)
        }
    }
}

struct Setup1_Previews: PreviewProvider {
    static var previews: some View {
        Setup1()
    }
}
