//
//  Created by Zsombor Szabo on 03/05/2020.
//  
//

import SwiftUI

struct TestResultsTitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat-SemiBold", size: 24))
            .foregroundColor(Color("Title Text Color"))
    }
}
